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