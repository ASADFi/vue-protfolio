<script>
export default {
	data: () => {
		return {
			copyrightDate: new Date().getFullYear(),
			projectName: 'Vue.js & Tailwind CSS Portfolio',
			author: 'Asad',
		};
	},
};
</script>

<template>
	<div class="flex justify-center items-center text-center">
		<div
			class="font-general-regular text-lg text-ternary-dark dark:text-ternary-light"
		>
			&copy; {{ copyrightDate }}.
			
		{{ projectName }}
			
		</div>
	</div>
</template>

<style lang="scss" scoped></style>
