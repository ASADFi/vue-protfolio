<script>
import feather from 'feather-icons';
import ProjectHeader from '../components/projects/ProjectHeader.vue';
import ProjectGallery from '../components/projects/ProjectGallery.vue';
import ProjectInfo from '../components/projects/ProjectInfo.vue';
import ProjectRelatedProjects from '../components/projects/ProjectRelatedProjects.vue';

export default {
	name: 'Projects',
	components: {
		ProjectHeader,
		ProjectGallery,
		ProjectInfo,
		ProjectRelatedProjects,
	},
	data: () => {
		return {
			singleProjectHeader: {
				singleProjectTitle: 'Web Developement ',
				singleProjectDate: 'Jul 26, 2023 present',
				singleProjectTag: 'devops / Fullstack',
			},
			projectImages: [
				{
					id: 1,
					title: 'Kabul Project Management UI 1',
					img: require('@/assets/images/ui-project-1.jpg'),
				},
				{
					id: 2,
					title: 'Kabul Project Management UI 2',
					img: require('@/assets/images/web-project-2.jpg'),
				},
				{
					id: 3,
					title: 'Kabul Project Management UI 3',
					img: require('@/assets/images/mobile-project-2.jpg'),
				},
			],
			projectInfo: {
				clientHeading: 'About Client',
				companyInfos: [
					{
						id: 1,
						title: 'Name',
						details: 'Company Ltd',
					},
					{
						id: 2,
						title: 'Services',
						details: 'Web Development & Devops ',
					},
					{
						id: 3,
						title: 'Website',
						details: 'https://company.com',
					},
					{
						id: 4,
						title: 'Phone',
						details: '+95 3022312952',
					},
				],
				objectivesHeading: 'Objective',
				objectivesDetails:
					'To leverage my expertise in web development and DevOps services to deliver innovative solutions and drive efficiency in software development processes. My goal is to contribute to cutting-edge projects, utilizing best practices in web development and DevOps methodologies to ensure scalable, secure, and reliable software solutions.',
				technologies: [
					{
						title: 'Tools & Technologies',
						techs: [
							'HTML',
							'CSS',
							'JavaScript',
							'Vue.js',
							'TailwindCSS',
							'AdobeXD',
							'Azure',
							'Docker',
							'Terraform',
							'Helm'
						],
					},
				],
				projectDetailsHeading: 'Challenge',
				projectDetails: [
					{
						id: 1,
						details:
							'As a web developer and DevOps engineer deploying a web app in Azure using kubectl, Helm, and Terraform, I may encounter various errors during the deployment process. One common error with kubectl is when a container in a pod takes too long to start, typically due to issues with the container image or resource constraints. To resolve this, I would check the container image and ensure it is properly configured, and review the resource limits and requests in the pod specification. With Helm, a common error occurs when Helm tries to create a resource that already exists in the cluster, often due to a previous failed deployment or manual changes. To resolve this, I would use the `--replace` or `--force` flag when running `helm install`, or manually delete the conflicting resources. In Terraform, an error may occur if the script does not have the necessary permissions to create or update Azure resources, which can be resolved by checking the Azure role assigned to the Terraform service principal or user. Additionally, general deployment errors, such as a "DeploymentFailed" status, can occur due to various reasons like resource limits, network issues, or configuration errors. To resolve these, I would review deployment logs and error messages in the Azure portal or CLI to identify and address the underlying cause. Overall, troubleshooting and monitoring are crucial in ensuring a successful deployment in Azure.',
					},
					{
						id: 2,
						details:
							'',
					},
					{
						id: 3,
						details:
							'',
					},
					{
						id: 4,
						details:
							"In this project, I've learned a great deal about web development, DevOps practices, and cloud deployment using Azure, kubectl, Helm, and Terraform. Working on this deployment has deepened my understanding of containerization with Docker, orchestration with Kubernetes, and infrastructure as code with Terraform. I've gained valuable experience in troubleshooting deployment issues, managing resources in Azure, and ensuring the scalability and reliability of web applications. This project has not only enhanced my technical skills but also my problem-solving abilities and attention to detail. I look forward to applying these learnings in future projects and continuing to grow as a web developer and DevOps engineer.",
					},
				],
				socialSharingsHeading: 'Share This',
				socialSharings: [
					{
						id: 1,
						name: 'Twitter',
						icon: 'twitter',
						url: '',
					},
					{
						id: 2,
						name: 'Instagram',
						icon: 'instagram',
						url: '',
					},
					{
						id: 3,
						name: 'Facebook',
						icon: 'facebook',
						url: 'https://facebook.com/',
					},
					{
						id: 4,
						name: 'LinkedIn',
						icon: 'linkedin',
						url: 'https://linkedin.com/',
					},
					{
						id: 5,
						name: 'Youtube',
						icon: 'youtube',
						url: '',
					},
				],
			},
			relatedProject: {
				relatedProjectsHeading: 'Related Projects',
				relatedProjects: [
					{
						id: 1,
						title: 'Mobile UI',
						img: require('@/assets/images/mobile-project-1.jpg'),
					},
					{
						id: 2,
						title: 'Web Application',
						img: require('@/assets/images/web-project-1.jpg'),
					},
					{
						id: 3,
						title: 'UI Design',
						img: require('@/assets/images/ui-project-2.jpg'),
					},
					{
						id: 4,
						title: 'Kabul Mobile App UI',
						img: require('@/assets/images/mobile-project-2.jpg'),
					},
				],
			},
		};
	},
	mounted() {
		feather.replace();
	},
	updated() {
		feather.replace();
	},
	methods: {},
};
</script>

<template>
	<div class="container mx-auto mt-10 sm:mt-20">
		<!-- Project header -->
		<ProjectHeader :singleProjectHeader="singleProjectHeader" />

		<!-- Project gallery -->
		<ProjectGallery :projectImages="projectImages" />

		<!-- Project information -->
		<ProjectInfo :projectInfo="projectInfo" />

		<!-- Project related projects -->
		<ProjectRelatedProjects :relatedProject="relatedProject" />
	</div>
</template>

<style scoped></style>
