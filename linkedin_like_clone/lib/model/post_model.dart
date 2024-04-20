class PostItem {
  final String name;
  final String createdTime;
  final String jobPosition;
  final String description;
  final List<String> tags;

  PostItem({
    required this.name,
    required this.createdTime,
    required this.jobPosition,
    required this.description,
    required this.tags,
  });
}

// Dummy list of PostItem objects
List<PostItem> dummyPosts = [
  PostItem(
    name: 'John Doe',
    createdTime: '2 hours ago',
    jobPosition: 'Software Engineer',
    description: 'Working on an exciting new project!',
    tags: ['Flutter', 'Dart', 'Mobile Development'],
  ),
  PostItem(
    name: 'Jane Smith',
    createdTime: '5 hours ago',
    jobPosition: 'Product Manager',
    description: 'Launching a new product next week!',
    tags: ['Product Management', 'UX/UI Design', 'Strategy'],
  ),
  PostItem(
    name: 'Alice Johnson',
    createdTime: '1 day ago',
    jobPosition: 'Data Scientist',
    description: 'Analyzing big data to drive insights.',
    tags: ['Data Science', 'Machine Learning', 'Python'],
  ),
  PostItem(
    name: 'Bob Williams',
    createdTime: '3 days ago',
    jobPosition: 'Marketing Manager',
    description: 'Planning a marketing campaign for next month.',
    tags: ['Marketing', 'Digital Marketing', 'SEO'],
  ),
  PostItem(
    name: 'Emily Brown',
    createdTime: '1 week ago',
    jobPosition: 'HR Manager',
    description: 'Hiring new talents for our growing team.',
    tags: ['Human Resources', 'Talent Acquisition', 'Employee Engagement'],
  ),
];
