/* Isaac Brickner
 Garbage collecting our particle system objects
 */

final color BACKGROUND_COLOR = color(255);
final int NUMBER_OF_PARTICLES = 100;

ArrayList<ParticleSystem> particleSystems;

void setup() {
  size(800, 800);
  particleSystems = new ArrayList<ParticleSystem>();
}

void draw() {
  background(BACKGROUND_COLOR);
  for (int i = particleSystems.size() - 1; i >= 0; --i) {
    ParticleSystem ps = particleSystems.get(i);
    if (ps.isFinished()) {
      particleSystems.remove(ps);
    } else {
      particleSystems.get(i).update();
      particleSystems.get(i).draw();
    }
  }
  displayNumberOfSystems();
}

void mousePressed() {
  particleSystems.add(new ParticleSystem(NUMBER_OF_PARTICLES, mouseX, mouseY));
}

void displayNumberOfSystems() {
  textSize(50);
  text("Number of Particle Systems : " + particleSystems.size(), 50, 50);
}
