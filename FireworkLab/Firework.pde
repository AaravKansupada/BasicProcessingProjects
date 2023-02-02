class Firework {

  Particle f;
  boolean exploded;
  color fcol;
  ArrayList<Particle> explosionList;

  Firework() {
    exploded = false;
    explosionList = new ArrayList<Particle>();
    fcol = color(random(0,255),random(0,255),random(0,255));
    f = new Particle(random(0, width), height/2, random(-800,800), true,fcol);
  }

  void display() {
    if (exploded == false) {
      f.show();
    }
    if (exploded == true) {
      for (Particle blow : explosionList) {
        blow.show();
      }
    }
  }

  void updateFirework(PVector force) {
    f.applyForce(force);
    f.update();
    if (f.velocity.y <= 0.2 && f.velocity.y >= 0) {
      exploded = true;
      explode();
    }
    if (exploded == true) {
      for (Particle blow : explosionList) {
        blow.update();
        blow.applyForce(gravity);
      }
    }
  }

  void explode() {

    for (int i = 0; i < 100; i++) {
      explosionList.add(new Particle(f.position.x, f.position.y, f.position.z, false,fcol));
    }
  }
}
