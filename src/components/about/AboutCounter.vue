<template>
	<div class="mt-10 sm:mt-20 bg-primary-light dark:bg-ternary-dark shadow-sm">
		<!-- About me counters -->
		<div class="font-general-regular container mx-auto py-20 block sm:flex sm:justify-between sm:items-center">
			<!-- Years of experience counter -->
			<div class="mb-20 sm:mb-0">
				<counter ref="counterExperience" :startAmount="0" :endAmount="12" :duration="1" :autoinit="true"
					@finished="handleCountingFinished('experience')"
					class="font-general-medium text-4xl font-bold text-secondary-dark dark:text-secondary-light mb-2"
					aria-label="About Status Counter" />
				<span class="block text-md text-ternary-dark dark:text-ternary-light">{{ experienceTitle }}</span>
			</div>

			<!-- GitHub stars counter -->
			<div class="mb-20 sm:mb-0">
			<counter ref="counterGithub" :startAmount="0" :endAmount="20" :duration="1" suffix="k+" :autoinit="true"
					@finished="handleCountingFinished('github')"
					class="font-general-medium text-4xl font-bold text-secondary-dark dark:text-secondary-light mb-2" />
				<span class="block text-md text-ternary-dark dark:text-ternary-light">{{ githubTitle }}</span>
			</div>

			<!-- Positive feedback counter -->
			<div class="mb-20 sm:mb-0">
				<counter ref="counterFeedback" :startAmount="0" :endAmount="92" :duration="1" suffix="%" :autoinit="true"
					@finished="handleCountingFinished('feedback')"
					class="font-general-medium text-4xl font-bold text-secondary-dark dark:text-secondary-light mb-2" />
				<span class="block text-md text-ternary-dark dark:text-ternary-light">{{ feedbackTitle }}</span>
			</div>

			<!-- Projects completed counter -->
			<div class="mb-20 sm:mb-0">
				<counter ref="counterProjects" :startAmount="0" :endAmount="77" :duration="1" :autoinit="true"
					@finished="handleCountingFinished('projects')"
					class="font-general-medium text-4xl font-bold text-secondary-dark dark:text-secondary-light mb-2" />
				<span class="block text-md text-ternary-dark dark:text-ternary-light">{{ projectsTitle }}</span>
			</div>
		</div>
	</div>
</template>
  
<script>
import counter from 'vue3-autocounter';

export default {
	components: {
		counter,
	},
	data() {
		return {
			experienceTitle: 'Years of experience',
			githubTitle: 'Stars on GitHub',
			feedbackTitle: 'Positive feedback',
			projectsTitle: 'Projects completed',
		};
	},
	methods: {
		handleCountingFinished() {
			
		},
	},
};
</script>
  