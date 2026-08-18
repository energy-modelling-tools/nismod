---
theme: jekyll-theme-primer
layout: sub-page
title: Get Involved
permalink: /contact/
---

<section class="bg-gray-light py-5 fade-in-center">
  <div class="container-lg p-responsive">
    <h2 class="alt-h2 mb-4 text-center">Get Involved</h2>

    <!-- CMS:section id=get_involved_get_involved -->
    <p class="text-center lead mb-4">Join the NISMOD community to ask questions, share infrastructure-modelling work, and contribute to the open-source tools.</p>
    <!-- /CMS:section -->

    <div class="text-center mb-5">
      {% include forum_cta.html %}
      <a href="https://github.com/nismod" target="_blank" class="btn btn-primary btn-lg mb-3">Visit NISMOD on GitHub →</a>
      <div class="social-links mt-4">
        <a href="https://www.youtube.com/@opsis-oxford" target="_blank" class="mx-2"><img src="/assets/img/youtube-icon.png" width="40" alt="YouTube"></a>
        <a href="https://linkedin.com/company/opsis-oxford" target="_blank" class="mx-2"><img src="/assets/img/linkedin-icon.png" width="40" alt="LinkedIn"></a>
      </div>
    </div>

    <div class="involvement-section mb-5">
      <h3 class="section-title text-center mb-4">How you can take part</h3>
      <div class="benefits-container">
        <div class="benefit-card text-center">
          <h5>Ask and discuss</h5>
          <!-- CMS:section id=get_involved_ask_and_discuss -->
          <p class="text-gray">Use the forum to troubleshoot models, share data workflows, and learn from other NISMOD users.</p>
          <!-- /CMS:section -->
        </div>
        <div class="benefit-card text-center">
          <h5>Contribute on GitHub</h5>
          <!-- CMS:section id=get_involved_contribute_on_github -->
          <p class="text-gray">Improvements to documentation, datasets, and packages such as snkit, snail, and open-gira are welcome.</p>
          <!-- /CMS:section -->
        </div>
        <div class="benefit-card text-center">
          <h5>Stay updated</h5>
          <!-- CMS:section id=get_involved_stay_updated -->
          <p class="text-gray">Follow training, EMP events, and new releases across the NISMOD ecosystem.</p>
          <!-- /CMS:section -->
        </div>
      </div>
    </div>
  </div>
</section>

<style>
.involvement-section {
  background: white;
  padding: 2rem;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}
.section-title {
  color: #0366d6;
  font-size: 1.5rem;
  font-weight: 600;
  margin-bottom: 1.5rem;
  padding-bottom: 0.5rem;
  border-bottom: 2px solid #e1e4e8;
}
.benefits-container {
  display: flex;
  justify-content: center;
  align-items: stretch;
  gap: 2rem;
  flex-wrap: wrap;
  margin: 0 auto;
  max-width: 900px;
}
.benefit-card {
  background: #f8f9fa;
  padding: 2rem 1rem;
  border-radius: 8px;
  border: 1px solid #e1e4e8;
  flex: 1;
  min-width: 250px;
  max-width: 280px;
}
.btn-primary {
  background-color: #0366d6;
  border-color: #0366d6;
  padding: 0.75rem 1.5rem;
  font-weight: 500;
}
.fade-in-center {
  opacity: 0;
  transform: translateY(30px);
  animation: fadeInUp 1.2s ease-out forwards;
}
@keyframes fadeInUp {
  to { opacity: 1; transform: translateY(0); }
}
</style>
