class ParticleSystem {

  ArrayList<Particle> particles = new ArrayList<Particle>();

  ParticleSystem(int size) {
    for (int i = 0; i < size; ++i) {
      //Particle p = new Particle();
      particles.add(new Particle());
    }
  }

  ParticleSystem(int size, float x, float y) {
    for (int i = 0; i < size; ++i) {
      //Particle p = new Particle(x, y);
      particles.add(new Particle(x, y));
    }
  }

  void update() {
    for (Particle p : particles) {
      p.move();
    }
  }

  void draw() {
    for (Particle p : particles) {
      p.draw();
    }
  }

  boolean isFinished() {
    boolean allParticlesOnScreen = true;
    for (Particle p : particles) {
      if (p.isOnScreen()) {
        allParticlesOnScreen = false;
        break;
      }
    }
    return allParticlesOnScreen;
  }
}
