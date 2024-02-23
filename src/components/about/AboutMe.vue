<script>
export default {
	setup() {
		return {
			bios: [
				{
					id: 1,
					bio:
						'As a seasoned software developer with a passion for crafting innovative solutions, I thrive on turning complex problems into elegant, user-friendly applications. With a strong foundation in  JavaScript, React, Node.js , Mongodb , Sql . I specialize in building robust web applications that push the boundaries of possibility.My approach combines technical expertise with a deep understanding of user experience, ensuring that every project I undertake not only meets but exceeds expectations. I am constantly learning and adapting to new technologies and methodologies to stay at the forefront of the ever-evolving tech landscape.',
				},
				{
					id: 2,
					bio:
						"Whether it's developing scalable backend systems, designing intuitive user interfaces, or optimizing performance, I bring a holistic approach to software development that delivers results. I am excited to collaborate on challenging projects that leverage cutting-edge technologies to make a meaningful impact.Let build something amazing together.",
				},
			],
		};
	},
};
</script>

<template>
	<div class="block sm:flex sm:gap-10 mt-10 sm:mt-20">
		<!-- About profile image -->
		<div class="w-full sm:w-1/4 mb-7 sm:mb-0">
			<img
				src="@/assets/images/asad.jpg"
				class="rounded-xl w-96"
				alt=""
			/>
		</div>

		<!-- About details -->
		<div class="w-full sm:w-3/4 text-left">
			<p
				v-for="bio in bios"
				:key="bio.id"
				class="font-general-regular mb-4 text-ternary-dark dark:text-ternary-light text-lg"
			>
				{{ bio.bio }}
			</p>
		</div>
	</div>
</template>
