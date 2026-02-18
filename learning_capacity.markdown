---
theme: jekyll-theme-primer
layout: sub-page
title: Learning & Capacity Building
permalink: /learning_capacity/
---

<section class="bg-gray-light py-5 fade-in-center">
  <div class="container-lg p-responsive">
    <div class="text-center">
      <h2 class="alt-h2 mb-4">Learning & Capacity Building</h2>
    </div>

    <h3 class="alt-h3 mt-3">🎓 Open University Course on Infrastructure and Climate Resilience</h3>
    <p>This course introduces infrastructure systems and climate risk analysis using NISMOD tools. It includes modules on sustainable development, climate resilience, and nature-based solutions.</p>
    <p><a href="https://www.open.edu/openlearncreate/course/view.php?id=7243#tabs-2" target="_blank" class="btn btn-outline-primary sky-blue-accent">Access Course →</a></p>

    <h3 class="alt-h3 mt-4">🛰️ GRI Risk Viewer</h3>
    <p>The Global Resilience Index (GRI) Risk Viewer is a web portal that visualizes climate and infrastructure risk globally and allows download of NISMOD data starter kits.</p>
    <p><a href="https://global.infrastructureresilience.org/" target="_blank" class="btn btn-outline-primary sky-blue-accent">Open GRI Risk Viewer →</a></p>

    <h3 class="alt-h3 mt-4">📦 Starter Data Kits</h3>
    <p><a href="https://zenodo.org/communities/ccg/records?q=%22Infrastructure%20Climate%20Resilience%20Assessment%20Data%20Starter%20Kit%22" target="_blank" class="btn btn-outline-primary sky-blue-accent">Explore Starter Kits on Zenodo →</a></p>

    <div class="mt-3 animate-in">
      <h3 class="alt-h3 mt-3 animate-in">🛠️ Flatpack Program</h3>
      <p class="animate-in text-justify">NISMOD Teaching Kit provides learning materials for an introductory course on using NISMOD tools to comprehensively study infrastructure systems analysis, climate risk assessment, and resilience planning by combining academic and practical aspects. It includes editable lecture slides, hands-on exercises, sample learning objectives, and a suggested course timetable.</p>
      <p class="animate-in">
        <a href="https://curriculum.climatecompatiblegrowth.com/courses/eb078912-ba07-42b2-85cb-7db262f42096" target="_blank" class="btn btn-outline-primary sky-blue-accent d-block d-sm-inline-block px-1 px-md-3">Open Teaching Kit →</a>
      </p>
    </div>

    <div class="mt-5">
      <h3 class="alt-h3 text-center">🌍 EMP Events</h3>
      <div class="clearfix gutter-spacious">
        {% for event in site.data.learning_events.events %}
        <div class="col-md-4 float-left animate-in mb-4">
          <h3 class="alt-h3 mb-3">{{ event.title }}</h3>
          <p><img src="{{ event.image }}" class="img-fluid" alt="{{ event.alt }}"/></p>
          <p class="text-gray">{{ event.description }}</p>
          <details>
            <summary class="btn btn-sm btn-outline toggle-arrow">Show Outputs</summary>
            <ul class="mt-2">
              {% for output in event.outputs %}
              <li>{{ output.title }} – <a href="{{ output.url }}" target="_blank">View</a></li>
              {% endfor %}
            </ul>
          </details>
        </div>
        {% endfor %}
      </div>
    </div>
  </div>
</section>

<style>
/* Fade-in animation for main title */
.fade-in-center {
  opacity: 0;
  transform: translateY(20px);
  animation: fadeInUp 1s ease forwards;
}

@keyframes fadeInUp {
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Animate-in effects for all elements */
.animate-in {
  opacity: 0;
  transform: translateY(30px);
  animation: animateIn 0.8s ease-out forwards;
  animation-delay: var(--animation-delay, 0s);
}

/* Staggered animation delays */
.animate-in:nth-child(1) { --animation-delay: 0.1s; }
.animate-in:nth-child(2) { --animation-delay: 0.2s; }
.animate-in:nth-child(3) { --animation-delay: 0.3s; }
.animate-in:nth-child(4) { --animation-delay: 0.4s; }
.animate-in:nth-child(5) { --animation-delay: 0.5s; }
.animate-in:nth-child(6) { --animation-delay: 0.6s; }
.animate-in:nth-child(7) { --animation-delay: 0.7s; }
.animate-in:nth-child(8) { --animation-delay: 0.8s; }
.animate-in:nth-child(9) { --animation-delay: 0.9s; }
.animate-in:nth-child(10) { --animation-delay: 1.0s; }

/* Column animations with staggered delays for 3-column layout */
.col-md-4.float-left.animate-in:nth-child(1) { animation-delay: 0.1s; }
.col-md-4.float-left.animate-in:nth-child(2) { animation-delay: 0.2s; }
.col-md-4.float-left.animate-in:nth-child(3) { animation-delay: 0.3s; }

/* Column hover effects */
.col-md-4.float-left {
  transition: all 0.3s ease;
  display: flex;
  flex-direction: column;
  height: 100%;
}

.col-md-4.float-left:hover {
  transform: translateY(-4px);
}

/* Standardize column height and content distribution */
.col-md-4.float-left > h3 {
  flex-shrink: 0;
  min-height: 5rem;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  margin-bottom: 1rem;
  line-height: 1.3;
}

.col-md-4.float-left > p:first-of-type {
  flex-shrink: 0;
  text-align: center;
  margin-bottom: 1rem;
}

/* Standardized image container */
.col-md-4 img {
  width: 100%;
  height: 220px;
  object-fit: cover;
  object-position: center;
  border-radius: 8px;
  transition: transform 0.3s ease;
}

.col-md-4 img:hover {
  transform: scale(1.02);
}

/* Text content area - flexible height */
.col-md-4.float-left > p.text-gray {
  flex: 1;
  margin-bottom: 1.5rem;
  line-height: 1.5;
}

/* Details section at bottom - aligned */
.col-md-4.float-left > details {
  margin-top: auto;
  align-self: flex-start;
}

/* Button alignment */
.col-md-4.float-left > details > summary {
  margin: 0;
}

/* List item animations */
li.animate-in:nth-child(1) { animation-delay: 0.1s; }
li.animate-in:nth-child(2) { animation-delay: 0.2s; }
li.animate-in:nth-child(3) { animation-delay: 0.3s; }
li.animate-in:nth-child(4) { animation-delay: 0.4s; }
li.animate-in:nth-child(5) { animation-delay: 0.5s; }
li.animate-in:nth-child(6) { animation-delay: 0.6s; }
li.animate-in:nth-child(7) { animation-delay: 0.7s; }
li.animate-in:nth-child(8) { animation-delay: 0.8s; }
li.animate-in:nth-child(9) { animation-delay: 0.9s; }

@keyframes animateIn {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Hover effects for interactive elements */
.animate-in:hover {
  transform: translateY(-2px);
  transition: transform 0.3s ease;
}

/* Enhanced container animations */
.container .animate-in {
  animation-delay: 0.3s;
}

/* Button hover animations */
.btn.animate-in:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  transition: all 0.3s ease;
}

/* Image animations */
img.animate-in:hover {
  transform: scale(1.05);
  transition: transform 0.3s ease;
}

.toggle-arrow::after {
  content: '↓';
  display: inline-block;
  margin-left: 6px;
  transition: transform 0.3s ease;
}
details[open] .toggle-arrow::after {
  transform: rotate(180deg);
}
</style>