# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.create([
    {
        name: "Cesar Perales",
        bio: "<p>Perales' appointment follows a 50-year career in public service and advocacy. Most recently, he served as New York State's Secretary of State, where he was directly involved in the state's economic development, government efficiency, local government services and anti-poverty efforts. He was also the co-founder of the Puerto Rican Legal Defense Fund (PRLDEF). In 1981, as President and General Counsel of PRLDEF, he initiated successful litigation against the City Council redistricting that was found to be in violation of the Voting Rights Act. Previously, Perales successfully sued to require New York City to provide language assistance at the ballot box - a requirement that was subsequently made an amendment to the national Voting Rights Act. He was also a Deputy Mayor under Mayor David Dinkins and had previously served as Assistant Secretary for the United States Department of Health and Human Services.</p>",
        role: "Chair",
        image_url: "Cesar-Perales.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/Cesar-Perales.jpg')),
        order: 0
    },
    {
        name: "Rachel Godsil",
        bio: "<p>Godsil, a Professor of Law and Chancellor's Scholar at Rutgers Law School, is the co-founder and director of research for the Perception Institute, a national consortium of social scientists, law professors, and advocates focusing on the role of the mind sciences in law, policy, and institutional practices. She collaborates with social scientists on empirical research to identify the efficacy of interventions to address implicit bias and racial anxiety. She is also a former Chair of the Rent Guidelines Board, worked previously as an Assistant United States Attorney for the Southern District of New York, and as an Associate Counsel at the NAACP Legal Defense and Educational Fund.</p>",
        role: "Vice-Chair",
        image_url: "Rachel-Godsil.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/Rachel-Godsil.jpg')),
        order: 1
    },
])

Staff.create([
    {
        name: "Carlo A. Scissura",
        bio: "<p>Carlo A. Scissura, a lifelong New Yorker and President and CEO of the New York Building Congress, will be the Secretary of the Commission. Before his time at the Building Congress, Scissura spent years as a dedicated public servant in Brooklyn – working as the President and CEO of the Brooklyn Chamber of Commerce and as Chief of Staff and General Counsel to Brooklyn Borough President Marty Markowitz.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 0
    },
    {
        name: "Larian Angelo",
        bio: "<p>Larian Angelo is a Senior Fellow at the CUNY Institute for State and Local Governance (ISLG). Prior to joining the ISLG, she served in city government for 27 years as first deputy director at the NYC Office of Management and Budget (OMB), Vice-President for Administration at Guttman Community College, deputy director for education and intergovernmental relations at OMB and Finance Director at the New York City Council. Angelo holds a Ph.D in economics.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 1
    },
    {
        name: "Deborah N. Archer",
        bio: "<p>Deborah N. Archer is an Associate Professor of Clinical Law at NYU Law. She was previously an Assistant Counsel at the NAACP Legal Defense and Educational Fund where she litigated at the trial and appellate levels in cases involving affirmative action in higher education, employment discrimination, school desegregation, and voting rights. Archer additionally served as a Marvin H. Karpatkin Fellow with the American Civil Liberties Union where she was involved in federal and state litigation on issues of race and poverty. Archer previously served as a mayoral appointee to the New York City Civilian Complaint Review Board.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 2
    },
    {
        name: "Kyle Bragg",
        bio: "<p>Kyle Bragg is 32BJ SEIU’s Secretary-Treasurer. A member of the 165,000 member 32BJ for more than 30 years, Kyle serves as trustee of several 32BJ funds and as chair of the union’s social and economic justice committee. He is a member of the executive board of the two million-member national Service Employee International Union, the National African-American Caucus of SEIU and serves on the international union’s first Racial Justice Task Force.  Bragg also serves as a board member of Community Board 13 in Queens.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 3
    },
    {
        name: "Marco A. Carrión",
        bio: "<p>Marco A. Carrión is the Commissioner of the Mayor’s Community Affairs Unit, working to connect City Hall to communities across the city, especially in the outer boroughs. Before his role as Commissioner, Marco was the Political and Legislative Director for the New York City Central Labor Council, Chief of Staff to New York State Senator Gustavo Rivera, Director of New York City Intergovernmental Affairs to Governor David Paterson, and worked for the AFL CIO in Washington D.C.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 4
    },
    {
        name: "Una Clarke",
        bio: "<p>Una Clarke serves as President of Una Clarke Associates, a consulting firm specializing primarily in education management, political consulting, and small business services. Previously, Clarke served as a New York City Councilwoman, representing Brooklyn’s 40th Council District for 10 years starting in 1991. Clarke sponsored more than 300 pieces of legislation on issues including child welfare, education, health and mental health, economic development, public safety and transportation. Clarke is currently a CUNY trustee, appointed by Mayor de Blasio.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 5
    },
    {
        name: "Angela Fernandez",
        bio: "<p>Angela Fernandez is the Executive Director and Supervising Attorney of Northern Manhattan Coalition for Immigrant Rights, a leading community-based legal services and advocacy organization for low-income immigrants. She brings to the Board 20 years of experience in law, media, non-profit management, government, policy development, and advocacy. Her prior government experience includes working as District Chief of Staff to U.S. Representative José  Serrano and as a staff aide to U.S. Senator Bill Bradley.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 6
    },
    {
        name: "Sharon Greenberger",
        bio: "<p>Sharon Greenberger is the 10th President and CEO of the YMCA of Greater New York, a leading New York City non-profit organization serving over 500,000 children, adults and seniors annually through programs and services focused on empowering youth, improving health, and strengthening community. Prior to joining the YMCA in July 2015, Sharon served as the Senior Vice President, Facilities and Real Estate at New York-Presbyterian Hospital and the Chief Operating Officer for the New York City Department of Education.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 7
    },
    {
        name: "Dale Ho",
        bio: "<p>Dale Ho is the Director of the ACLU's Voting Rights Project where he supervises the ACLU’s voting rights litigation and advocacy work nationwide. Ho has active cases in over a dozen states throughout the country. He has litigated cases under the federal Voting Rights Act and the National Voter Registration Act. Ho is also an adjunct professor of law at NYU School of Law.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 8
    },
    {
        name: "Mendy Mirocznik",
        bio: "<p>Mendy Mirocznik is the president of C.O.J.O of Staten Island, a borough wide civic organization dedicated to providing services to those less fortunate, including housing and a food pantry which provides hundreds of hot meals to our fixed income seniors. Mirocznik is also a member of Community Board 2.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 9
    },
    {
        name: "Annetta Seecharran",
        bio: "<p>Annetta Seecharran has a 25 years track record working to improve conditions for marginalized communities -- having led key initiatives benefiting immigrants and young people; and always drawing attention to emerging trends impacting vulnerable populations. She is currently the Executive Director of Chhaya Community Development Corporation, previously led South Asian Youth Action and has served as Director of Policy for United Neighborhood Houses.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 10
    },
    {
        name: "John Siegal",
        bio: "<p>John Siegal is a partner at BakerHostetler where he handles litigations, arbitrations, and appeals for clients in the financial services, media, and real estate industries. Siegal’s public service experience includes working as an Assistant to Mayor David N. Dinkins and as a Capitol Hill staff aide to Senator (then Congressman) Charles E. Schumer.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 11
    },
    {
        name: "Wendy Weiser",
        bio: "<p>Wendy Weiser directs the Democracy Program at the Brennan Center for Justice at NYU Law. Her program focuses on voting rights and elections, money in politics and ethics, redistricting and representation, government dysfunction, rule of law, and fair courts. She founded and directed the program’s Voting Rights and Elections Project, directing litigation, research, and advocacy efforts to enhance political participation and prevent voter disenfranchisement across the country.</p>",
        role: "Staff",
        image_url: "default.jpg",
        profile_pic: File.open(File.join(Rails.root, 'app/assets/images/headshots/default.jpg')),
        order: 12
    }
])

Job.create([
    {
        position: "Research Analyst",
        number_of_positions: "Multiple",
        open_date: "05/24/18",
        close_date: "Until Filled",
        duties_and_responsibilities: "<p><strong><em>This is a temporary position that is anticipated to end in November 2019.</em></strong></p><p>The New York City Charter creates the framework for City government, setting out the land use and budget processes, as well as the powers of elected officials.</p><p>The New York City Charter Revision Commission—made up of Members appointed by the Speaker of the City Council, the Mayor, all five Borough Presidents, the Public Advocate, and the Comptroller—will examine the entire Charter and recommend changes. The Commission is expected to submit ballot proposals for the November 2019 general election.</p><p>Research Analysts will be responsible for reviewing the City Charter, prior changes and their impacts, and proposals submitted by the public, interested parties, elected officials, and the Commission. Research Analysts will work closely with Commission staff and Members in developing amendments.</p>",
        responsibilities: "",
        requirements: "<ul><li>Excellent academic credentials.</li><li>Superior writing, research, and analytical skills, and strong communication and organizational abilities.</li><li>Familiarity with the City’s budget, land use process, the balance of power between elected officials, or other structural issues.</li><li>Familiarity with the New York City Charter.</li></ul>",
        attention: "CHRESAN",
        council_url: "https://council.nyc.gov/jobs/research-analyst/",
        order: 0

    },
    {
        position: "Administrative Assistant",
        number_of_positions: "1",
        open_date: "05/10/2018",
        close_date: "Until Filled",
        duties_and_responsibilities: "<p><strong><em>This is a temporary position that is anticipated to end in November 2019.</em></strong></p><p>The New York City Charter creates the framework for City government, setting out the land use and budget processes, as well as the powers of elected officials.</p><p>The New York City Charter Revision Commission—made up of Members appointed by the Speaker of the City Council, the Mayor, all five Borough Presidents, the Public Advocate, and the Comptroller—will examine the entire Charter and recommend changes. The Commission is expected to submit ballot proposals for the November 2019 general election.</p><p>The Administrative Assistant would manage all administrative functions of the Commission, including hearing preparation, scheduling, and general support of Commission staff.</p>",
        responsibilities: "",
        requirements: "<ul><li>At least two years of relevant experience.</li><li>Proficiency in Microsoft Office.</li><li>Demonstrated organizational skills and ability to multi-task.</li><li>Familiarity with City government is a plus.</li></ul>",
        attention: "CRCADMN",
        council_url: "https://council.nyc.gov/jobs/administrative-assistant/",
        order: 1
    },
    {
        position: "Counsel",
        number_of_positions: "Multiple",
        open_date: "05/10/2018",
        close_date: "Until Filled",
        duties_and_responsibilities: "<p><strong><em>This is a temporary position that is anticipated to end in November 2019.</em></strong></p><p>The New York City Charter creates the framework for City government, setting out the land use and budget processes, as well as the powers of elected officials.</p><p>The New York City Charter Revision Commission—made up of Members appointed by the Speaker of the City Council, the Mayor, all five Borough Presidents, the Public Advocate, and the Comptroller—will examine the entire Charter and recommend changes. The Commission is expected to submit ballot proposals for the November 2019 general election.</p><p>Counsels to the Commission will be responsible for reviewing the City Charter, prior changes and their impacts, and proposals submitted by the public, interested parties, elected officials, and the Commission. The Counsels will work closely with Commission staff and Members in developing and drafting amendments.</p>",
        responsibilities: "",
        requirements: "<ul><li>J.D. from an accredited law school.</li><li>Superior writing, research, and analytical skills, and strong communication and organizational abilities.</li><li>Familiarity with the City’s budget, land use process, the balance of power between elected officials, or other structural issues.</li><li>Familiarity with the New York City Charter.</li></ul>",
        attention: "CRCCNSL",
        council_url: "https://council.nyc.gov/jobs/counsel-2/",
        order: 2
    },
    {
        position: "Director of Outreach",
        number_of_positions: "1",
        open_date: "05/10/2018",
        close_date: "Until Filled",
        duties_and_responsibilities: "<p><strong><em>This is a temporary position that is anticipated to end in November 2019.</em></strong></p><p>The New York City Charter creates the framework for City government, setting out the land use and budget processes, as well as the powers of elected officials.</p><p>The New York City Charter Revision Commission—made up of Members appointed by the Speaker of the City Council, the Mayor, all five Borough Presidents, the Public Advocate, and the Comptroller—will examine the entire Charter and recommend changes. The Commission is expected to submit ballot proposals for the November 2019 general election.</p>",
        responsibilities: "<ul><li>Coordinate with the Communications Director in publicizing Commission hearings to encourage robust public participation.</li><li>Develop and execute an outreach campaign to solicit ideas and recommendations from a wide variety of civic and community leaders.</li><li>Serve as a liaison between Commission staff and Members and civic and community leaders.</li><li>Collaborate with Commission staff and Members in analyzing the impact of proposed amendments on communities and stakeholders.</li><li>Develop and execute strategic voter outreach plans to promote recommended changes to Charter and encourage their adoption.</li></ul>",
        requirements: "<ul><li>At least five years of experience in public engagement, community outreach, or legislative affairs.</li><li>Community-minded, familiarity with local communities and groups.</li><li>Superior communication and organizational abilities.</li><li>Familiarity with the City’s budget, land use process, the balance of power between elected officials, or other structural issues.</li></ul>",
        attention: "CRCDO",
        council_url: "https://council.nyc.gov/jobs/director-of-outreach/",
        order: 3
    },
    {
        position: "Director of Communications",
        number_of_positions: "1",
        open_date: "05/10/2018",
        close_date: "Until Filled",
        duties_and_responsibilities: "<p><strong><em>This is a temporary position that is anticipated to end in November 2019.</em></strong></p><p>The New York City Charter creates the framework for City government, setting out the land use and budget processes, as well as the powers of elected officials.</p><p>The New York City Charter Revision Commission—made up of Members appointed by the Speaker of the City Council, the Mayor, all five Borough Presidents, the Public Advocate, and the Comptroller—will examine the entire Charter and recommend changes. The Commission is expected to submit ballot proposals for the November 2019 general election.</p>",
        responsibilities: "<ul><li>Develop and execute a comprehensive communications strategy to publicize the work of the Commission, including an online presence.</li><li>Provide strategic communications guidance and assistance to Commission staff and Members.</li><li>Develop and execute strategic media campaigns to promote recommended changes to Charter and encourage their adoption.</li></ul>",
        requirements: "<ul><li>At least five years of experience.</li><li>Superior communication and organizational abilities.</li><li>Strong press and social media skills.</li><li>Familiarity with the City’s budget, land use process, the balance of power between elected officials, or other structural issues.</li></ul>",
        attention: "CRCDC",
        council_url: "https://council.nyc.gov/jobs/director-of-communications/",
        order: 4
    },
    {
        position: "Outreach Liaison",
        number_of_positions: "1",
        open_date: "05/10/2018",
        close_date: "Until Filled",
        duties_and_responsibilities: "<p><strong><em>This is a temporary position that is anticipated to end in November 2019.</em></strong></p><p>The New York City Charter creates the framework for City government, setting out the land use and budget processes, as well as the powers of elected officials.</p><p>The New York City Charter Revision Commission—made up of Members appointed by the Speaker of the City Council, the Mayor, all five Borough Presidents, the Public Advocate, and the Comptroller—will examine the entire Charter and recommend changes. The Commission is expected to submit ballot proposals for the November 2019 general election.</p>",
        responsibilities: "<ul><li>Publicize Commission hearings to encourage robust public participation.</li><li>Solicit ideas and recommendations from a wide variety of civic and community leaders.</li><li>Serve as a liaison between Commission staff and Members and civic and community leaders.</li><li>Collaborate with Commission staff and Members in analyzing the impact of proposed amendments on communities and stakeholders.</li><li>Conduct strategic voter outreach plans to promote recommended changes to Charter and encourage their adoption.</li></ul>",
        requirements: "<ul><li>Experience in public engagement, community outreach, or legislative affairs.</li><li>Community-minded, familiarity with local communities and groups.</li><li>Superior communication and organizational abilities.</li><li>Familiarity with the City’s budget, land use process, the balance of power between elected officials, or other structural issues.</li></ul>",
        attention: "CRCOL",
        council_url: "https://council.nyc.gov/jobs/outreach-liaison/",
        order: 5
    },
    {
        position: "Press Secretary",
        number_of_positions: "1",
        open_date: "05/10/2018",
        close_date: "Until Filled",
        duties_and_responsibilities: "<p><strong><em>This is a temporary position that is anticipated to end in November 2019.</em></strong></p><p>The New York City Charter creates the framework for City government, setting out the land use and budget processes, as well as the powers of elected officials.</p><p>The New York City Charter Revision Commission—made up of Members appointed by the Speaker of the City Council, the Mayor, all five Borough Presidents, the Public Advocate, and the Comptroller—will examine the entire Charter and recommend changes. The Commission is expected to submit ballot proposals for the November 2019 general election.</p>",
        responsibilities: "<ul><li>Manage the Commission’s online strategy and content.</li><li>Draft and edit releases, op-editorials, letters to the editor and talking points.</li><li>Under the guidance of the Communications Director, pitch stories on the Commission’s work to reporters, as appropriate.</li><li>Provide strategic communications guidance and assistance to Commission staff and Members.</li></ul>",
        requirements: "<ul><li>At least two years of relevant experience.</li><li>Superior communication and organizational abilities.</li><li>Strong press and social media skills.</li><li>Familiarity with the City’s budget, land use process, the balance of power between elected officials, or other structural issues.</li></ul>",
        attention: "CRCPS",
        council_url: "https://council.nyc.gov/jobs/press-secretary/",
        order: 6
    }
])

Hearing.create([
    {
        date_of_hearing:"2018-07-12T18:00",
        location_of_hearing:"CUNY Baruch",
        transcript_url:"",
        hearing_content:"<p>The first meeting of the Charter Revision Commission will be held here.</p>",
        address_1:"55 Lexington Ave.",
        address_2:"",
        city:"New York",
        zip_code: 10010,
        google_maps_url:'<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12091.968445934113!2d-73.9833745!3d40.7401991!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xec88233d3a5d270f!2sBaruch+College!5e0!3m2!1sen!2sus!4v1529011057289" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'
    },
    {
        date_of_hearing:"2018-07-12T18:00",
        location_of_hearing:"CUNY Graduate Center",
        transcript_url:"",
        hearing_content:"<p>The first meeting of the Charter Revision Commission will be held here.</p>",
        address_1:"365 5th Ave.",
        address_2:"",
        city:"New York",
        zip_code: 10016,
        google_maps_url:'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.6171544394037!2d-73.98568028456091!3d40.74844897932796!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259a9c6c0cfed%3A0xe4364e074551ce8!2sThe+Graduate+Center%2C+CUNY!5e0!3m2!1sen!2sus!4v1529011628170" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'
    }
])

News.create([{
  title: 'Council to Vote on Sexual Harassment Legislative Package and the Creation of a Charter Revision Commission',
  publication_date: '4/11/2018',
  publication: 'NYC Council',
  contact_info: '<a href="https://council.nyc.gov/" target="_blank">https://council.nyc.gov/</a>',
  order: 0,
  news_content:'<p style=\"text-align: center\"><em>The Council’s “Stop Sexual Harassment in NYC Act” would be among the strictest anti-sexual harassment legislation in the country</em></p><strong>City Hall –</strong> Today, the New York City Council will vote on its “Stop Sexual Harassment in NYC Act,” a comprehensive package of legislation strengthening New York City’s anti-sexual harassment policies and combating sexual harassment in the workplace. The Council will also vote to create a Charter Revision Commission, which will draft a new or revised City Charter. In addition, the Council will vote to add two appointees to the City’s Nightlife Advisory Board. The Council will also vote on two budget modifications. Finally, the Council will vote on a number of land use items in the boroughs of Brooklyn and Manhattan.<br><br>“With the #MeToo and the Time’s Up movements, we have seen that women are forces to be reckoned with, and they made loud and clear that enough is enough. The beginning of the end starts with New York City. All New Yorkers are entitled to a safe, respectful workplace, and this package of legislation sends a strong message to public and private employers that there is no place for sexual harassment in our City. With more and more sexual harassment cases being brought to light, it has never been more important for the government to play a role in the movement to end sexual harassment and assault. As legislators, it is our responsibility to do something about it and protect our constituents. I want to thank my Council colleagues for their support in pushing this package of bills forward and leading the charge here in New York City,” said <strong>Speaker Corey Johnson</strong>.<br><br><strong><u>Stop Sexual Harassment in NYC Act</u></strong><br><br><strong>Mandating Anti-Sexual Harassment Trainings at City Agencies</strong><br><br><strong>Introduction 612-A</strong>, <em>sponsored by Speaker Corey Johnson,</em> would require city agencies, as well as the offices of the borough presidents, comptroller and public advocate, to conduct annual anti-sexual harassment training for all employees.<br><br><strong>Assessing Workplace Risk Factors Related to Sexual Harassment at City Agencies</strong><br><br><strong>Introduction 613-A</strong>, <em>sponsored by Council Member Adrienne Adams,</em> would require city agencies, as well as the offices of the borough presidents, comptroller and public advocate, to conduct an ongoing assessment of risk factors associated with sexual harassment at such agency in order to help provide a fair and safe work environment for all city workers. These workplace risk factors have been identified by the United States Equal Employment Opportunity Commission Select Task Force on the Study of Harassment in the Workplace as identifiers to help employers and employees find ways to prevent conduct before it rises to the level of illegal workplace harassment.<br><br>“Every person whether they work in government or private industry should be able to do their jobs without fear of being sexually harassed. We now know that sexual harassment in the workplace is so prevalent that we need to take active measures to stop it before it begins which is why I am joining my colleagues to bring attention to this important issue. My bill, which will mandate an assessment of risk factors, will help to create a safe work environment for all city employees,” said <strong>Council Member Adrienne Adams.</strong><br><br><strong>Requiring Information about Sexual Harassment to be Available Online for Public Access </strong><br><br><strong>Introduction 614-A</strong>, <em>sponsored by Council Member Alicka Ampry-Samuel,</em> would require the New York City Commission on Human Rights (CCHR) to conspicuously post on its website resources about sexual harassment, including an explanation that sexual harassment is a form of unlawful discrimination under local law.<br><br><strong>Creating an Anti-Sexual Harassment Rights and Responsibilities Poster</strong><br><br><strong>Introduction 630-A</strong>, <em>sponsored by Council Members Robert Cornegy and Laurie Cumbo,</em> would require all employers in the city to conspicuously display an anti-sexual harassment rights and responsibility poster designed by the Commission on Human Rights. The poster would be designed to use simple and understandable terms.<br><br>“At a moment when so many are standing up and saying #MeToo, it is critical that we as elected officials seize this moment to implement policies aimed at rooting out sexual violence so that no one else has to join their voices in such a chorus. Int. 630-A, along with the rest of the anti-harassment legislation being passed today, lays the groundwork for creating a city that stands firmly against sexual harassment and provides the appropriate mechanisms for handling instances of such harassment swiftly and justly,” said <strong>Council Member Robert Cornegy.</strong><br><br><strong>Mandating Anti-Sexual Harassment Trainings at Private Companies</strong><br><br><strong>Introduction 632-A</strong>, <em>sponsored by Council Member Laurie Cumbo and Public Advocate Letitia James,</em> would require all private employers in the city, with 15 or more employees, to conduct annual anti-sexual harassment interactive training for all employees of such employer, including interns and supervisory and managerial personnel after 90 days of initial hire. Employers may use computer or online training programs to satisfy the requirements of this bill.<br><br>“Women of every race and socio-economic background know what it’s like for sexual harassment to have a negative impact in their workplace, and in their lives. Today, we’re hoping to pass legislation that will ensure that sexual harassment is properly identified, reported, and ultimately prevented in New York City. I am proud to partner with my colleagues in City government on this important package of legislation so that these destructive acts cannot continue in our City,” said <strong>Public Advocate Letitia James.</strong><br><br><strong>Reporting on Workplace Sexual Harassment within City Agencies on Annual Basis</strong><br><br><strong>Introduction 653-A</strong>, <em>sponsored by Council Members Mark Levine, Jumaane Williams, Ritchie Torres and Fernando Cabrera,</em> would require city agencies, as well as the offices of the borough presidents, comptroller and public advocate, to annually report on incidents of workplace sexual harassment within city agencies to the Department of Citywide Administrative Services.<br><br>“Across the country, an epidemic of sexual harassment plagues every corner of every industry from L.A. to D.C. As a city, we have an obligation to enact policies that help protect employees both in and out of government. Today’s commitment by the Council, under the leadership of Speaker Johnson and my colleague, Council Member Rosenthal, to reevaluate and improve our sexual harassment policies will guarantee victims the protection and attention they deserve,” said <strong>Council Member Mark Levine.</strong><br><br>“One of the factors that permits sexual harassment to fester and poison the workplace is because it is allowed to remain hidden in plain sight. Council Member Levine’s bill, of which I am a proud co-prime sponsor, will help shine light on the scope of this problem by requiring reporting of sexual harassment complaint made in city agencies. We cannot solve the problem if we cannot see it for the urgent danger that it is. I want to thank Chair Rosenthal, Council Member Levine, Speaker Johnson, and all who have worked to make this issue the priority that it needs to be,” said <strong>Council Member Jumaane Williams.</strong><br><br>“With this legislative package concerning sexual harassment we are beginning to break down barriers that prevent employees from reaching their fullest potential in the workplace. This bill will bring transparency to how city government agencies are handling sexual harassment incidents- the City must look internally and assess how these incidents are handled in order to be a leader in stopping sexual harassment,” said <strong>Council Member Ritchie Torres.</strong><br><br><strong>Expanding Sexual Harassment Protections to All Employees</strong><br><br><strong>Introduction 657-A</strong>, <em>sponsored by Council Member Keith Powers,</em> would amend the New York City Human Rights Law (NYCHRL) to apply provisions related to gender based discrimination to all employers, regardless of the number of employees.<br><br>“I am proud to join my colleagues in passing legislation that addresses sexual harassment in the workplace. My legislation extends sexual harassment protection to employees of any company, regardless of its size. We are experiencing a watershed moment, and the Council’s focus on these workplace issues is just the tip of the iceberg. We are overdue for change when it comes to equality and sexual harassment. I look forward to working to continue to make much-needed updates to the law to ensure all New Yorkers have equal protection,” said <strong>Council Member Keith Powers.</strong><br><br><strong>Making Improvements to Clarify and Strengthen the Human Rights Law Relating to Sexual Harassment</strong><br><br><strong>Introduction 660-A</strong>, <em>sponsored by Council Member Carlina Rivera,</em> would amend the policy statement of the NYCHRL to expressly include sexual harassment as a form of discrimination that the CCHR shall have the power to eliminate and prevent.<br><br>“I am proud to have introduced Intro. 660 as one of my first pieces of legislation, and there is no better time to address sexual harassment in our city than right now, in the wake of the #MeToo and Time’s Up Movement. With the passage of the Stop Sexual Harassment in NYC Act and the recent launch of the NYC Commission on Human Rights’ public education campaign regarding sexual harassment, our city is taking the proper steps to make it clear: this behavior is a form of discrimination and will not be tolerated,” said <strong>Council Member Carlina Rivera.</strong><br><br><strong>Expanding Sexual Harassment Protections to All Employees</strong><br><br><strong>Introduction 663-A</strong>, <em>sponsored by Council Member Helen Rosenthal,</em> would amend the NYCHRL to increase the statute of limitations for filing harassment claims based on unwelcome conduct that intimidates, interferes with, oppresses, threatens, humiliates or degrades a person based on such person’s gender from one year to three years from the time that the alleged harassment occurred.<br><br><strong>Mandating City Agencies to Conduct Climate Surveys and Action Plans to Combat Sexual Harassment</strong><br><br><strong>Introduction 664-A</strong>, <em>sponsored by Council Member Helen Rosenthal,</em> would require all city agencies, as well as the borough presidents, comptroller and the public advocate, to conduct climate surveys to assess the general awareness and knowledge of the city’s equal employment opportunity (“EEO”) policy, including but not limited to sexual harassment policies and prevention at city agencies.<br><br>“This legislation is an incredible first step toward ending sexual harassment in New York City. We are expanding protections and making sure that employees know their rights. Every workplace, whether it is a city agency or private company, will now have to provide training on what constitutes sexual harassment, and what to do if you have experienced or witnessed it. I want to thank Speaker Johnson for his extraordinary leadership and partnership in making the Stop Sexual Harassment in NYC Act reality. The incredible energy coming out of the #MeToo movement helped to make it possible for this Act to be passed. This legislation isn’t checking a box—it represents the beginning of a real shift toward a culture of respect and accountability. And the Act is just the beginning. This Council will continue to push to interrupt abuses of power and make sexual harassment and gender-based discrimination a thing of the past,” said <strong>Council Member Helen Rosenthal.</strong><br><br><strong>Addressing Sexual Harassment in Labor Services Employment Reports</strong><br><br><strong>Introduction 693</strong>, <em>sponsored by Council Member James Van Bramer,</em> would require that contractors and subcontractors that apply for city contracts include their employment practices, policies and procedures as they relate to preventing and addressing sexual harassment in the employment report required of proposed contractors and subcontractors.<br><br>“This issue must be taken seriously, and as lawmakers we must do all that we can to ensure that adequate training and resources are provided in the workplace. The legislation that I have introduced requires that organizations seeking to do business with or receive funding from the city provide details of their practices, policies and procedures as they relate to preventing and addressing sexual harassment. I will continue to fight for legislation that expands protections against sexual harassment and assault for all New Yorkers,” said <strong>Council Member James Van Bramer.</strong><br><br><strong>Calling on the Federal Government to Pass the “Ending Forced Arbitration of Sexual Harassment Act of 2017”</strong><br><br><strong>Resolution 222</strong>, <em>sponsored by Council Member I. Daneek Miller,</em> calls upon Congress to pass, and the President to sign S.2203/H.R.4734, known as the “Ending Forced Arbitration of Sexual Harassment Act of 2017,” which prohibits a predispute arbitration agreement from being valid or enforceable if it requires arbitration of a sex discrimination dispute.<br><br>“I’m proud to stand alongside Speaker Johnson, Councilwoman Rosenthal and my fellow co-sponsors of the Stop Sexual Harassment in NYC Act as this body votes to take a forceful and unambiguous stand against such menacing and degrading behavior. We are in the midst of a transformation from a culture that breeds sexual harassment in the workplace towards one promoting safe and healthy work environments free from this manner of abuse. I put forth Resolution 222 - calling on Congress to enact the Ending Forced Arbitration of Sexual Harassment Act by U.S. Senator Kirsten Gillibrand and Congresswoman Cheri Bustos – in recognition of the fact forced arbitration restricts those who may have been subjected to harassment from accessing the courts to seek potential relief or corrective measures. A policy that inhibits a fair and impartial investigation of a sexual harassment claim runs counter to any genuine effort to curb this kind of conduct and shouldn’t apply in such a circumstance. I thank my colleagues for rallying around this moral imperative to protect the dignity of our workers and drive sexual harassment from our City’s places of employment,” said <strong>Council Member I. Daneek Miller.</strong><br><br><strong>Proposed Rule of the Council: Resolution to Amend Council Rules</strong><br><br>This resolution would amend Council policies and practices to align with the slate of anti-sexual harassment bills.<br><br><strong><u>Establishing a Charter Revision Commission</u></strong><br><br><strong>Introduction 241-B</strong>, <em>sponsored by Speaker Corey Johnson, Public Advocate Letitia James and Manhattan Borough President Gale Brewer,</em> would establish a Charter Revision Commission to draft a new or revised City Charter. The Commission would have appointees from a wide array of City elected officials, including the Mayor, Borough Presidents, Public Advocate, and Comptroller.<br><br>The Commission created by this bill would not have predetermined issues to consider, but would instead be empowered to examine broader questions of the structure of New York City government.<br><br>“It has been nearly 30 years since a Charter Revision Commission examined the checks and balances in our City. A balanced system equals a healthy democracy. I thank my colleagues in government, Public Advocate Tish James and Borough President Gale Brewer for supporting the Council in establishing this commission,” said <strong>Speaker Corey Johnson.</strong><br><br>“It is not every day that we get an opportunity to fundamentally change the future of our City. Creating a commission to review New York City’s charter will provide us with the chance to make a real and lasting difference in how New York City grows and adapts, especially with regards to the issues most important to New Yorkers. I thank Speaker Johnson and Manhattan Borough President Brewer for their partnership on this bill and I look forward to the chance to make our City even better,” said <strong>Public Advocate Letitia James.</strong><br><br>“The Charter is the engine that makes city government run, and after thirty years, that engine is overdue for a comprehensive inspection and tune-up. This bill creates a balanced panel, without a pre-baked agenda, that can take a thorough look at how the Charter is working, and how it can be improved to make city government more effective for New Yorkers. Thank you to my partner Public Advocate James, to Speaker Johnson, and to the Council for supporting a comprehensive Charter review,” said <strong>Manhattan Borough President Gale Brewer.</strong><br><br>“It is about time we take a closer look at the Charter, not with the intent to make it all new, but rather to make it work better for the City of New York.  It is my hope that by establishing a Charter Revision Commission we can increase the opportunities for direct input from the public on how to best guide future growth that strengthens and uplifts entire communities,” said <strong>Queens Borough President Melinda Katz.</strong><br><br>“I thank Speaker Johnson and the members of the City Council for advancing forward a Charter Revision Commission that will assess the fundamental functions and framework of our municipal government. It is time for a top-to-bottom review that openly studies how the City can best serve and represent the voices of everyday New Yorkers. As I testified to the Council last month, I urge the upcoming charter review process to make 100% public financing a reality; it is, in fact, the most important reform I believe this process can pursue. Working with Mayor de Blasio, Comptroller Stringer, Public Advocate James, Speaker Johnson, and my fellow borough presidents, I look forward to a robust dialogue in the months ahead that lives up to the democratic values New Yorkers expect us to advance,” said <strong>Brooklyn Borough President Eric Adams.</strong><strong> </strong><br><br>“In 2010, New York City residents were promised a top-to-bottom review of the City Charter, but what they actually got was a sham with a predetermined outcome. As a result, structural government failures and inefficiencies have gone unaddressed. I am encouraged that Speaker Johnson and the City Council are putting forth legislation to impanel a City Charter Revision Commission with an open mandate to review the entire City Charter for as long as it takes to advance real reform. I look forward to submitting my proposals, especially the call for enhanced local control, to an independent, blue ribbon Commission,” said <strong>Staten Island Borough President James Oddo.</strong><br><br><strong><u>Adding Two Appointees to the Nightlife Advisory Board</u></strong><br><br><strong> </strong><strong>Introduction 754</strong>, <em>sponsored by Council Member Rafael Espinal,</em> adds two additional members to the Nightlife Advisory Board, increasing the total number of members from 12 to 14.<br><br><strong> </strong><br><br><strong>The City Council will also vote on the following finance item(s)…</strong><br><br><strong> </strong>The Council will be voting on two budget modifications. The Expense Budget modification, MN-6, would transfer $970.3 million between various units of appropriation in Fiscal 2018, with a zero net effect on the budget. The Revenue Budget modification, MN-7, would recognize $783.8 million in new revenues for Fiscal 2018. These new revenues, combined with other funds for a total of $2.58 billion, will be added to the Budget Stabilization Account to prepay debt service for Fiscal 2019.<br><br>&nbsp;<br><br><strong>The City Council will also vote on the following land use item(s)…</strong><br><br><em>Gowanus Canal CSO, Brooklyn</em><br><br>The Council will vote to approve an application for the proposed site selection and acquisition of three privately owned properties at 242 and 270 Nevins Street, 234 Butler Street in order to facilitate the construction of the “Head End Facility” as part of the larger project to construct combined sewer overflow (“CSO”) control facilities to reduce the volume of untreated wastewater entering the Gowanus Canal. This project is located in Council Member Stephen Levin’s district.<br><br><em>35 Underhill Avenue Rezoning, Brooklyn</em><br><br>The Council will vote to rezone 35 Underhill Avenue to facilitate the building’s conversion from parking to commercial use. This project is located in Majority Leader Laurie Cumbo’s district.<br><br><em>21 East 12<sup>th</sup> Street Parking Garage, Manhattan</em><br><br>The Council will vote to modify the special permit sought by 21 E12 LLC in order to allow an attended parking garage with a maximum capacity of 150 spaces, instead of the 187 spaces sought. The building is on East 12th Street and University Place in Council Member Carlina Rivera’s district.<br><br><em>Special Projects Loan – 165 West 80<sup>th</sup> Street, Manhattan</em><br><br>The Council will vote to approve the Department of Housing Preservation and Development (HPD)’s application for the Urban Development Action Area Project (UDAAP) and Article X1 tax exemption for property which will be rehabilitated with approximately 29 affordable co-op units in Council Member Helen Rosenthal’s district.<br><br><em>CUCS West 127<sup>th</sup> Street Supportive Housing, Manhattan</em><br><br>The Council will vote to approve the Department of Housing Preservation and Development (HPD)’s application for approval of an Urban Development Action Area Project (UDAAP) and special permit to facilitate the development of a 12-story community facility building with 117 units of affordable and supportive housing and on-site supportive services. This project is located in Council Member Bill Perkins’ district.<br><br><em>Taxi and Limousine Commission Office Lease</em><br><br>The Council will vote on a motion to file the application to remove it from the Council’s calendar after it was withdrawn by the applicant. The Department of Citywide Administrative Services (DCAS) and the Taxi and Limousine Commission (TLC) had sought approval to acquire office space located at 188 West 230 Street, in Council Member Fernando Cabrera’s district.<br><br>&nbsp;<p style=\"text-align: center\">###</p>&nbsp;'
}])