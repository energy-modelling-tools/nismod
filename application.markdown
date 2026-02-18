---
theme: jekyll-theme-primer
layout: sub-page
title: Applications
permalink: /applications/
---

<section class="bg-gray-light container-lg p-responsive py-4 py-md-6 my-lg-6 fade-in-center">
  <div class="text-center fade-in-center">
    <h2 class="alt-h2 mb-4">NISMOD Applications</h2>
  </div>

  <div class="applications-content text-left">
    <p class="lead mb-4">NISMOD is a fundamental building block for a wide range of applications across government, industry, and academia. Several examples include:</p>

    <div class="applications-grid">
      <div class="application-category">
        <h3 class="category-title">Governments</h3>
        <ul class="application-list">
          <li>Supports national-scale infrastructure planning and resilience assessment in the UK and internationally.</li>
          <li>Helps policymakers evaluate future infrastructure pathways under uncertainty.</li>
        </ul>
      </div>

      <div class="application-category">
        <h3 class="category-title">Industry and Think Tanks</h3>
        <ul class="application-list">
          <li>Informs infrastructure investment decisions across multiple sectors.</li>
          <li>Assesses risks and interdependencies between energy, transport, water, and telecommunications systems.</li>
        </ul>
      </div>

      <div class="application-category">
        <h3 class="category-title">Academia</h3>
        <ul class="application-list">
          <li>Enables development and evaluation of infrastructure system models.</li>
          <li>Supports climate change, resilience, and sustainable development research.</li>
        </ul>
      </div>
    </div>
  </div>
</section>

<section class="container-lg p-responsive py-4 py-md-6 my-lg-6">
  <div class="text-center mb-5">
    <h2 class="alt-h2">Specialist Applications</h2>
  </div>

  <div class="slider-wrapper my-5">
    <div class="arrow arrow-left" onclick="slideTextPrev()">‹</div>

    <div class="slider-container">
      <div class="slider" id="textSlider">
        <div class="slide-card">
          <h3>NISMOD2</h3>
          <p><a href="https://nismod.github.io/nismod2/" target="_blank">Integrated system-of-systems model for UK infrastructure planning</a></p>
        </div>

        <div class="slide-card">
          <h3>GRI Risk Viewer</h3>
          <p><a href="https://global.infrastructureresilience.org/" target="_blank">Global data portal for infrastructure risk and resilience analysis</a></p>
        </div>

        <div class="slide-card">
          <h3>snkit</h3>
          <p><a href="https://github.com/nismod/snkit" target="_blank">Python library for creating and manipulating spatial network data</a></p>
        </div>

        <div class="slide-card">
          <h3>snail</h3>
          <p><a href="https://github.com/nismod/snail" target="_blank">Toolkit for infrastructure risk analysis and loss estimation</a></p>
        </div>
      </div>
    </div>

    <div class="arrow arrow-right" onclick="slideTextNext()">›</div>
  </div>

  <div class="slider-dots text-center mt-3" id="sliderDots"></div>
</section>

<!-- Recommended Reading Section -->
<section class="bg-white py-5 fade-in-center">
  <div class="container-lg p-responsive">
    <h2 class="alt-h2 mb-4 text-center">Recommended Reading</h2>
    <p class="text-center text-gray mb-5">Explore key publications that demonstrate NISMOD’s use in infrastructure planning, resilience assessment, and climate risk analysis.</p>

    {% for paper in site.data.recommended_reading.recommended_reading %}
    <div class="recommended-reading-item mb-5">
      <h3 class="alt-h3 mb-2">
        <a href="{{ paper.link }}" target="_blank">{{ paper.title }}</a>
      </h3>
      <p class="text-gray">{{ paper.abstract }}</p>
    </div>
    {% endfor %}

    <div class="text-center mt-4">
      <a href="{{ site.data.recommended_reading.google_scholar }}" target="_blank" class="btn btn-outline-primary sky-blue-accent">View All on Google Scholar →</a>
    </div>
  </div>
</section>

<style>
/* Enhanced Applications Page Styling */
.applications-content {
  max-width: 1200px;
  margin: 0 auto;
}

.applications-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin-top: 2rem;
}

.application-category {
  background: white;
  padding: 2rem;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}

.application-category:hover {
  transform: translateY(-4px);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
}

.category-title {
  color: #0366d6;
  font-size: 1.3rem;
  font-weight: 600;
  margin-bottom: 1rem;
  padding-bottom: 0.5rem;
  border-bottom: 2px solid #e1e4e8;
}

.application-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.application-list li {
  margin-bottom: 0.8rem;
  padding-left: 1.5rem;
  position: relative;
}

.application-list li::before {
  content: "→";
  position: absolute;
  left: 0;
  color: #0366d6;
  font-weight: bold;
}

.application-list a {
  color: #24292e;
  text-decoration: none;
  transition: color 0.3s ease;
  line-height: 1.5;
}

.application-list a:hover {
  color: #0366d6;
  text-decoration: underline;
}

/* Enhanced Slider Styling */
.slider-wrapper {
  position: relative;
  max-width: 800px;
  margin: 0 auto;
  display: flex;
  align-items: center;
}

.slider-container {
  overflow: hidden;
  width: 100%;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.slider {
  display: flex;
  transition: transform 0.6s ease-in-out;
}

.slide-card {
  min-width: 100%;
  padding: 2.5rem;
  background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
  border-left: 5px solid #0366d6;
  text-align: center;
  transition: all 0.3s ease;
}

.slide-card:hover {
  background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
  transform: scale(1.02);
}

.slide-card h3 {
  margin-bottom: 1rem;
  color: #24292e;
  font-size: 1.5rem;
  font-weight: 600;
}

.slide-card a {
  color: #0366d6;
  text-decoration: none;
  font-weight: 500;
  font-size: 1.1rem;
  transition: all 0.3s ease;
}

.slide-card a:hover {
  color: #0056b3;
  text-decoration: underline;
}

.arrow {
  font-size: 2.5rem;
  cursor: pointer;
  user-select: none;
  padding: 0.5rem 1rem;
  color: #0366d6;
  background: rgba(255, 255, 255, 0.9);
  border-radius: 8px;
  transition: all 0.3s ease;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.arrow:hover {
  background: white;
  transform: scale(1.1);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

.arrow-left {
  position: absolute;
  left: -50px;
}

.arrow-right {
  position: absolute;
  right: -50px;
}

.slider-dots {
  display: flex;
  justify-content: center;
  gap: 12px;
  margin-top: 1.5rem;
}

.slider-dots .dot {
  width: 12px;
  height: 12px;
  background-color: #d1d5da;
  border-radius: 50%;
  cursor: pointer;
  transition: all 0.3s ease;
}

.slider-dots .dot:hover {
  background-color: #0366d6;
  transform: scale(1.2);
}

.slider-dots .dot.active {
  background-color: #0366d6;
  transform: scale(1.2);
}

/* Enhanced Publications Styling */
.recommended-reading {
  max-width: 1000px;
  margin: 0 auto;
}

.publications-list {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.publication-item {
  background: white;
  padding: 2rem;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
  border-left: 4px solid #0366d6;
}

.publication-item:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
}

.publication-header {
  margin-bottom: 1rem;
}

.publication-title {
  font-size: 1.2rem;
  font-weight: 600;
  color: #24292e;
  margin-bottom: 0.5rem;
  line-height: 1.4;
}

.publication-authors {
  font-weight: 500;
  color: #586069;
  margin-bottom: 0.3rem;
}

.publication-journal {
  font-style: italic;
  color: #586069;
  margin-bottom: 0.5rem;
}

.publication-link {
  color: #0366d6;
  text-decoration: none;
  font-size: 0.9rem;
  word-break: break-all;
}

.publication-link:hover {
  text-decoration: underline;
}

.publication-abstract {
  color: #586069;
  line-height: 1.6;
  font-size: 0.95rem;
  text-align: justify;
}

/* Responsive Design */
@media (max-width: 768px) {
  .applications-grid {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }
  
  .application-category {
    padding: 1.5rem;
  }
  
  .arrow-left {
    left: -30px;
  }
  
  .arrow-right {
    right: -30px;
  }
  
  .slide-card {
    padding: 2rem 1.5rem;
  }
  
  .publication-item {
    padding: 1.5rem;
  }
}

@media (max-width: 480px) {
  .arrow {
    font-size: 2rem;
    padding: 0.3rem 0.8rem;
  }
  
  .arrow-left {
    left: -25px;
  }
  
  .arrow-right {
    right: -25px;
  }
}

/* Enhanced fade-in animations */
.fade-in-center {
  opacity: 0;
  transform: translateY(30px);
  animation: fadeInUp 1.2s ease-out forwards;
}

@keyframes fadeInUp {
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
</style>

<script>
// Enhanced Slider Functionality
let slideIndex = 0;
const textSlider = document.getElementById("textSlider");
const dotsContainer = document.getElementById("sliderDots");
const textSlides = textSlider ? textSlider.children.length : 0;

function updateSlider() {
  if (!textSlider) return;
  textSlider.style.transform = `translateX(-${slideIndex * 100}%)`;
  updateDots();
}

function slideTextNext() {
  slideIndex = (slideIndex + 1) % textSlides;
  updateSlider();
}

function slideTextPrev() {
  slideIndex = (slideIndex - 1 + textSlides) % textSlides;
  updateSlider();
}

function createDots() {
  if (!dotsContainer) return;
  for (let i = 0; i < textSlides; i++) {
    const dot = document.createElement("span");
    dot.classList.add("dot");
    dot.addEventListener("click", () => {
      slideIndex = i;
      updateSlider();
    });
    dotsContainer.appendChild(dot);
  }
}

function updateDots() {
  const dots = document.querySelectorAll(".slider-dots .dot");
  dots.forEach((dot, i) => {
    dot.classList.toggle("active", i === slideIndex);
  });
}

// Auto-slide functionality
let sliderInterval = null;
if (textSlider && textSlides > 0) {
  sliderInterval = setInterval(slideTextNext, 5000);

  // Pause auto-slide on hover
  textSlider.parentElement.addEventListener("mouseenter", () => {
    clearInterval(sliderInterval);
  });

  textSlider.parentElement.addEventListener("mouseleave", () => {
    sliderInterval = setInterval(slideTextNext, 5000);
  });
}

// Keyboard navigation
document.addEventListener("keydown", (e) => {
  if (e.key === "ArrowLeft") {
    slideTextPrev();
  } else if (e.key === "ArrowRight") {
    slideTextNext();
  }
});

// Initialize only when slider markup exists.
if (textSlider && dotsContainer && textSlides > 0) {
  createDots();
  updateSlider();
}
</script>
