Algoritmo Pobrevolution
	
	TalEq1 Es entero // HABILIDAD LOCAL
	TalEq2 Es entero // HABILIDAD VISITANTE
	renEq1 Es entero // RENDIMIENTO LOCAL
	renEq2 Es entero // RENDIMIENTO VISITANTE
	SueEq1 Es entero // SUERTE LOCAL
	SueEq2 Es entero // SUERTE VISITANTE
	ParEq1 Es entero // RESULTADO LOCAL
	ParEq2 Es entero // RESULTADO VISITANTE
	gol1 Es entero   // GOLES LOCALES
	gol2 Es entero // GOLES VISITANTES
	difpart Es entero// BALANCE DEL PARTIDO
	eqLocal Es cadena // NOMBRE DE LOCALES
	eqVisi Es cadena  // NOMBRE DE VISITANTES
	selecEq1 Es Entero // SELECCION LOCAL
	selecEq2 Es Entero // SELECCION VISITANTE
	menuIntro Es Entero // MENU INICIAL
	selecLiga Es Entero // MENU DE LIGAS
	ligaSeleccionada Es entero // LIGA QUE SELECCIONASTE
	liga Es Cadena
	talentEquipo Es Entero
	nombreEquipo Es Cadena
	local Es Entero
	visitante Es Entero
	reinicioAPa Es Entero
	oca2 ,oca1,reinicioAP es entero
	dificultadPVP,mododejuego,selec,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal , talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi es entero
	
	Dimension liga[8]
	Dimension talentEquipo[141]
	Dimension nombreEquipo[141]
	
	//NOMBRES DE EQUIPOS Superliga ------------------------------------------------------------------------------
	nombreEquipo[1]="Argentinos Jrs";nombreEquipo[2]="Arsenal de Sarandi";nombreEquipo[3]="Atlético Rafaela";nombreEquipo[4]="Atlético Tucumán";nombreEquipo[5]="Banfield";nombreEquipo[6]="Belgrano";nombreEquipo[7]="Boca Juniors";nombreEquipo[8]="Chacarita";nombreEquipo[9]="Colón";nombreEquipo[10]="Defensa y Justicia";nombreEquipo[11]="Estudiantes";nombreEquipo[12]="Gimnasia de La Plata";nombreEquipo[13]="Godoy Cruz";nombreEquipo[14]="Huracán";nombreEquipo[15]="Independiente";nombreEquipo[16]="Lanús";nombreEquipo[17]="Newell°s";nombreEquipo[18]="Olimpo";nombreEquipo[19]="Patronato";nombreEquipo[20]="Racing Club";nombreEquipo[21]="River Plate";nombreEquipo[22]="Rosario Central";nombreEquipo[23]="San Lorenzo";nombreEquipo[24]="San Martin SJ";nombreEquipo[25]="Talleres";nombreEquipo[26]="Temperley";nombreEquipo[27]="Unión";nombreEquipo[28]="Vélez Sarsfield"
	//NOMBRES DE EQUIPOS selecciones mundialistas
	nombreEquipo[29]="Alemania";nombreEquipo[30]="Arabia";nombreEquipo[31]="Argentina";nombreEquipo[32]="Australia";nombreEquipo[33]="Brasil";nombreEquipo[34]="Bélgica";nombreEquipo[35]="Colombia";nombreEquipo[36]="Corea del Sur";nombreEquipo[37]="Costa Rica";nombreEquipo[38]="Croacia";nombreEquipo[39]="Dinamarca";nombreEquipo[40]="Egipto";nombreEquipo[41]="España";nombreEquipo[42]="Francia";nombreEquipo[43]="Inglaterra";nombreEquipo[44]="Irán";nombreEquipo[45]="Islandia" ;nombreEquipo[46]="Japón";nombreEquipo[47]="Marruecos";nombreEquipo[48]="México";nombreEquipo[49]="Nigeria";nombreEquipo[50]="Panamá";nombreEquipo[51]="Perú";nombreEquipo[52]="Polonia";nombreEquipo[53]="Portugal";nombreEquipo[54]="Rusia";nombreEquipo[55]="Senegal";nombreEquipo[56]="Serbia";nombreEquipo[57]="Suecia";nombreEquipo[58]="Suiza";nombreEquipo[59]="Túnez" ;nombreEquipo[60]="Uruguay";
	//NOMBRES DE EQUIPOS Liga Santander ESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑAESPAÑA
	nombreEquipo[61]="Alavés";nombreEquipo[62]="Athletic Bilbao";nombreEquipo[63]="Atlético Madrid";nombreEquipo[64]="Barcelona";nombreEquipo[65]="Betis";nombreEquipo[66]="Celta de Vigo";nombreEquipo[68]="Eibar";nombreEquipo[69]="Espanyol";nombreEquipo[70]="Getafe";nombreEquipo[71]="Girona";nombreEquipo[72]="Las Palmas";nombreEquipo[73]="Leganés";nombreEquipo[74]="Levante";nombreEquipo[75]="Malaga";nombreEquipo[76]="Real Madrid";nombreEquipo[77]="Real Sociedad";nombreEquipo[78]="Sevilla";nombreEquipo[79]="Valencia";nombreEquipo[80]="Villarreal";nombreEquipo[67]="Deportivo La Coruña"
	//NOMBRES DE EQUIPOS Premier League
	nombreEquipo[81]="Arsenal FC";nombreEquipo[82]="Bournemouth";nombreEquipo[83]="Brighton And Hove";nombreEquipo[84]="Burnley";nombreEquipo[85]="Chelsea";nombreEquipo[86]="Crystal Palace";nombreEquipo[87]="Everton";nombreEquipo[88]="Huddersfield";nombreEquipo[89]="Leicester City";nombreEquipo[90]="Liverpool";nombreEquipo[91]="Manchester City";nombreEquipo[92]="Manchester United";nombreEquipo[93]="Newcastle";nombreEquipo[94]="Southampton";nombreEquipo[95]="Stoke City";nombreEquipo[96]="Swansea City";nombreEquipo[97]="Tottenham Hotspur";nombreEquipo[98]="Watford";nombreEquipo[99]="West Bromwich";nombreEquipo[100]="West Ham";
	//NOMBRES DE EQUIPOS Serie A
	nombreEquipo[101]="Atalanta";nombreEquipo[102]="Benevento";nombreEquipo[103]="Bologna";nombreEquipo[104]="Cagliari";nombreEquipo[105]="Chievo Verona";nombreEquipo[106]="Coronel";nombreEquipo[107]="Fiorentina";nombreEquipo[108]="Genoa";nombreEquipo[109]="Hellas Verona";nombreEquipo[110]="Inter";nombreEquipo[111]="Juventus";nombreEquipo[112]="Lazio";nombreEquipo[113]="Milan";nombreEquipo[114]="Nápoli";nombreEquipo[115]="Roma";nombreEquipo[116]="SPAL 2013";nombreEquipo[117]="Sampdoria";nombreEquipo[118]="Sassuolo";nombreEquipo[119]="Torino";nombreEquipo[120]="Udinese";
	//NOMBRES DE EQUIPOS Otros Europa
	nombreEquipo[121]="Basel";nombreEquipo[122]="Bayer Munich";nombreEquipo[123]="Besiktas";nombreEquipo[124]="CSKA Moscú";nombreEquipo[125]="Marsella";nombreEquipo[126]="PSG";nombreEquipo[127]="Porto";nombreEquipo[128]="Salzburg";nombreEquipo[129]="Shakhtar";nombreEquipo[130]="Sporting Lisboa";
	//NOMBRES DE EQUIPOS Otros América
	nombreEquipo[131]="Atlético Mineiro";nombreEquipo[132]="Corinthians";nombreEquipo[133]="Deportivo Quito";nombreEquipo[134]="Flamengo";nombreEquipo[135]="NY City";nombreEquipo[136]="NY Red Bulls";nombreEquipo[137]="Nacional de Montevideo";nombreEquipo[138]="Santa Fe";nombreEquipo[139]="U católica";nombreEquipo[140]="U de chile";
	
	//TALENTS DE EQUIPOS ------------------------------------------------------------------------------
	//TALENTS Superliga
	talentEquipo[1]=74;talentEquipo[2]=65;talentEquipo[3]=72;talentEquipo[4]=71;talentEquipo[5]=68;talentEquipo[6]=78;talentEquipo[7]=65;talentEquipo[8]=70;talentEquipo[9]=72;talentEquipo[10]=75;talentEquipo[11]=70;talentEquipo[12]=70;talentEquipo[13]=67;talentEquipo[14]=77;talentEquipo[15]=73;talentEquipo[16]=69;talentEquipo[17]=65;talentEquipo[18]=66;talentEquipo[19]=76;talentEquipo[20]=80;talentEquipo[21]=72;talentEquipo[22]=67;talentEquipo[23]=77;talentEquipo[24]=74;talentEquipo[25]=65;talentEquipo[26]=66;talentEquipo[27]=69;talentEquipo[28]=67;
	//TALENTS Selecciones Mundialistas
	talentEquipo[29]=89;talentEquipo[30]=76;talentEquipo[31]=93;talentEquipo[32]=80;talentEquipo[33]=90;talentEquipo[34]=85;talentEquipo[35]=80;talentEquipo[36]=81;talentEquipo[37]=78;talentEquipo[38]=78;talentEquipo[39]=78;talentEquipo[40]=78;talentEquipo[41]=90;talentEquipo[42]=82;talentEquipo[43]=83;talentEquipo[44]=72;talentEquipo[45]=69;talentEquipo[46]=80;talentEquipo[47]=71;talentEquipo[48]=82;talentEquipo[49]=83;talentEquipo[50]=76;talentEquipo[51]=79;talentEquipo[52]=79;talentEquipo[53]=86;talentEquipo[54]=77;talentEquipo[55]=71;talentEquipo[56]=77;talentEquipo[57]=80;talentEquipo[58]=80;talentEquipo[59]=75;talentEquipo[60]=84;
	//TALENTS Liga Santander
	talentEquipo[61]=71;talentEquipo[62]=77;talentEquipo[63]=88;talentEquipo[64]=90;talentEquipo[65]=86;talentEquipo[66]=82;talentEquipo[68]=79;talentEquipo[69]=75;talentEquipo[70]=79;talentEquipo[71]=82;talentEquipo[72]=66;talentEquipo[73]=74;talentEquipo[74]=68;talentEquipo[75]=65;talentEquipo[76]=90;talentEquipo[77]=77;talentEquipo[78]=84;talentEquipo[79]=88;talentEquipo[80]=86;talentEquipo[67]=61;
	//TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League TALENTS Premier League 
	talentEquipo[81]=87;talentEquipo[82]=82;talentEquipo[83]=79;talentEquipo[84]=85;talentEquipo[85]=87;talentEquipo[86]=75;talentEquipo[87]=84;talentEquipo[88]=75;talentEquipo[89]=85;talentEquipo[90]=88;talentEquipo[91]=89;talentEquipo[92]=89;talentEquipo[93]=82;talentEquipo[94]=73;talentEquipo[95]=71;talentEquipo[96]=77;talentEquipo[97]=88;talentEquipo[98]=80;talentEquipo[99]=70;talentEquipo[100]=79;
	//TALENTS Serie A
	talentEquipo[101]=82;talentEquipo[102]=66;talentEquipo[103]=76;talentEquipo[104]=71;talentEquipo[105]=72;talentEquipo[106]=68;talentEquipo[107]=84;talentEquipo[108]=77;talentEquipo[109]=68;talentEquipo[110]=86;talentEquipo[111]=89;talentEquipo[112]=88;talentEquipo[113]=86;talentEquipo[114]=88;talentEquipo[115]=88;talentEquipo[116]=69;talentEquipo[117]=80;talentEquipo[118]=72;talentEquipo[119]=79;talentEquipo[120]=74;
	//TALENTS Otros Europa
	talentEquipo[121]=74;talentEquipo[122]=88;talentEquipo[123]=79;talentEquipo[124]=80;talentEquipo[125]=79;talentEquipo[126]=83;talentEquipo[127]=82;talentEquipo[128]=81;talentEquipo[129]=78;talentEquipo[130]=79;
	//TALENTS Otros America
	talentEquipo[131]=80;talentEquipo[132]=76;talentEquipo[133]=75;talentEquipo[134]=79;talentEquipo[135]=78;talentEquipo[136]=77;talentEquipo[137]=77;talentEquipo[138]=70;talentEquipo[139]=74;talentEquipo[140]=76;

	//NOMBRES DE LIGAS --------------------------------------------------------------------------------
	liga[1]="Superliga Argentina";liga[2]="Liga Santander";liga[3]="Premier League";liga[4]="SerieA";liga[5]="Otros Europa";liga[6]="Otros America";liga[7]="Selecciones Nacionales"
	//NOMBRES DE LIGAS --------------------------------------------------------------------------------
// AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
Repetir
	Escribir "----------MENU---------"
	Escribir ""
	Escribir "1. Partida Rapida"
	Escribir "2. Simular Partido"
	Escribir "3. Modos De Juego"
	Escribir " "
	Escribir "7. Tutorial"
	Escribir "8. Creditos"
	Escribir "9. Salir"
	Escribir ""
	Escribir "-----------------------"
	mododejuego=0
	Leer menuIntro
	Limpiar Pantalla
	Segun menuIntro Hacer
		1:
			menuIntro=0
			Escribir "----------MENU---------"
			Escribir " "
			Escribir "1. Jugador Vs IA"
			Escribir "2. Jugador Vs Jugador"
			Escribir ""
			Escribir "-----------------------"
			Leer menuIntro
			Limpiar Pantalla
			Segun menuIntro Hacer
				1:
					
					mododejuego=2
					Escribir "Seleccionar liga"
					Escribir " "
					menuLigasEscribir(liga)
					Leer selecLiga
					Limpiar Pantalla
					Segun selecLiga Hacer
						1:
							ligaSeleccionada=1
							ligaSuperliga(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
							reinicioAP=1
						2:
							ligaSeleccionada=2
							ligaSantander(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						3:
							ligaSeleccionada=3
							ligaPremier(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						4:
							ligaSeleccionada=4
							ligaSerieA(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						5:
							ligaSeleccionada=5
							otrosEuropa(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						6:
							ligaSeleccionada=6
							otrosAmerica(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						7:
							ligaSeleccionada=7
							seleccionesNacionales(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						9:
							reinicioAP=1
					FinSegun
				2:
					mododejuego=3
					Escribir "Seleccionar liga"
					Escribir " "
					menuLigasEscribir(liga)
					Leer selecLiga
					Limpiar Pantalla
					Segun selecLiga Hacer
						1:
							ligaSeleccionada=1
							ligaSuperliga(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
							reinicioAP=1
						2:
							ligaSeleccionada=2
							ligaSantander(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						3:
							ligaSeleccionada=3
							ligaPremier(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						4:
							ligaSeleccionada=4
							ligaSerieA(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						5:
							ligaSeleccionada=5
							otrosEuropa(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						6:
							ligaSeleccionada=6
							otrosAmerica(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						7:
							ligaSeleccionada=7
							seleccionesNacionales(nombreEquipo, local, visitante)
							eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
							marcador( eqLocal,eqVisi )
							partidoPvP(selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal, talentMedLocal, talentAtaLocal, talentDefVisi, talentMedVisi, talentAtaVisi,renEq1, renEq2, difpart,eqLocal,eqVisi,mododejuego)
							partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
							reinicioAP=1
						9:
							reinicioAP=1
					FinSegun
			Fin Segun
			
		2:
			mododejuego=1
			Escribir "Seleccionar liga"
			Escribir " "
			menuLigasEscribir(liga)
			Leer selecLiga
			Limpiar Pantalla
			Segun selecLiga Hacer
				1:
					ligaSeleccionada=1
					ligaSuperliga(nombreEquipo, local, visitante)
					eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
					marcador( eqLocal,eqVisi )
					simularPartido(RenEq1, renEq2, SueEq1, SueEq2, difpart)
					//partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego, difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
					reinicioAP=1
				2:
					ligaSeleccionada=2
					ligaSantander(nombreEquipo, local, visitante)
					eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
					marcador( eqLocal,eqVisi )
					simularPartido(RenEq1, renEq2, SueEq1, SueEq2, difpart)
					//partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego, difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
					reinicioAP=1
				3:
					ligaSeleccionada=3
					ligaPremier(nombreEquipo, local, visitante)
					eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
					marcador( eqLocal,eqVisi )
					simularPartido(RenEq1, renEq2, SueEq1, SueEq2, difpart)
					//partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego, difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
					reinicioAP=1
				4:
					ligaSeleccionada=4
					ligaSerieA(nombreEquipo, local, visitante)
					eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
					marcador( eqLocal,eqVisi )
					simularPartido(RenEq1, renEq2, SueEq1, SueEq2, difpart)
					//partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego, difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
					reinicioAP=1
				5:
					ligaSeleccionada=5
					otrosEuropa(nombreEquipo, local, visitante)
					eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
					marcador( eqLocal,eqVisi )
					simularPartido(RenEq1, renEq2, SueEq1, SueEq2, difpart)
					//partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego, difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
					reinicioAP=1
				6:
					ligaSeleccionada=6
					otrosAmerica(nombreEquipo, local, visitante)
					eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
					marcador( eqLocal,eqVisi )
					simularPartido(RenEq1, renEq2, SueEq1, SueEq2, difpart)
					//partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego, difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
					reinicioAP=1
				7:
					ligaSeleccionada=7
					seleccionesNacionales(nombreEquipo, local, visitante)
					eqlocal=nombreEquipo(local) ; eqVisi=nombreEquipo(visitante); talEq1=talentEquipo(local) ; talEq2=talentEquipo(visitante)
					marcador( eqLocal,eqVisi )
					simularPartido(RenEq1, renEq2, SueEq1, SueEq2, difpart)
					//partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego, difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
					reinicioAP=1
				9:
					reinicioAP=1
			FinSegun
		3:
			Limpiar Pantalla
			Escribir "Modos De Juego Proximamente"
			Esperar 3 Segundos
			Limpiar Pantalla
			reinicioAP=1
		7:
			Limpiar Pantalla
			Escribir "Tutoriales Proximamente"
			Esperar 3 Segundos
			Limpiar Pantalla
			reinicioAP=1
		8:
			Limpiar Pantalla
			Escribir "Creditos... Nadie hizo nada todavia"
			Esperar 3 Segundos
			Limpiar Pantalla
			reinicioAP=1
		9:
			Limpiar Pantalla
			Escribir "Hasta Luego"
			Esperar 2 Segundos
			reinicioAP=99
		De Otro Modo:
			Limpiar Pantalla
			Escribir "Seleccion incorrecta"
			Esperar 2 Segundos
			Limpiar Pantalla
			reinicioAP=1
		
	FinSegun
Hasta Que reinicioAP=99
FinAlgoritmo
//AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
Funcion simularPartido (RenEq1 por referencia, renEq2 por referencia, SueEq1 por referencia, SueEq2 por referencia, difpart por referencia)
	gol1,gol2,ParEq1,oca2,oca1,arEq1,parEq2,talEq1,talEq2,mododejuego,talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi Es Entero
	eqLocal,eqVisi es cadena
	RenEq1=azar(30)
	RenEq2=azar(30)
	
	SueEq1=azar(2)
	SueEq2=azar(2)
	
	ParEq1=talEq1+RenEq1
	ParEq2=talEq2+RenEq2
	
	difpart=ParEq1-ParEq2
	mododejuego=1
	partido(talEq1,talEq2,eqLocal,eqVisi,gol1,gol2,oca2,oca1,mododejuego,difpart, talentDefLocal,talentMedLocal,talentAtaLocal,talentAtaVisi,talentMedVisi,talentAtaVisi)
FinFuncion

Funcion partidoPvP (selec ,selec2, talentEqLocal, talentEqVisi, talentDefLocal por referencia, talentMedLocal por referencia, talentAtaLocal por referencia, talentDefVisi por referencia, talentMedVisi por referencia, talentAtaVisi por referencia, renEq1 Por Referencia, renEq2 Por Referencia, difpart Por Referencia,eqLocal,eqVisi,mododejuego)
	talEq1,talEq2, ParEq1, ParEq2 es entero
	Escribir "JUGADOR 1: " eqLocal
	Escribir "Seleccionar Formacion"
	Escribir "1. 3-3-3-1"
	Escribir "2.  3-4-3"
	Escribir "3.  3-5-2"
	Escribir "4.  3-6-1"
	Escribir "5.  4-2-4"
	Escribir "6.  4-3-3"
	Escribir "7.  4-4-2"
	Escribir "8.  4-5-1"
	Escribir "9.  5-2-3"
	Escribir "10. 5-3-2"
	Escribir "11. 5-4-1"
	Leer selec
	si selec>12 o selec=0 Entonces
		Escribir "Seleccion no valida"
	FinSi
	selecformaciones(selec,talentEqLocal , talentDefLocal, talentMedLocal, talentAtaLocal)
	limpiar Pantalla
	selec=0
	Repetir
	Limpiar Pantalla 
	Escribir "JUGADOR 2: " eqVisi
	Escribir "Seleccionar formacion"
	Escribir "1. 3-3-3-1"
	Escribir "2.  3-4-3"
	Escribir "3.  3-5-2"
	Escribir "4.  3-6-1"
	Escribir "5.  4-2-4"
	Escribir "6.  4-3-3"
	Escribir "7.  4-4-2"
	Escribir "8.  4-5-1"
	Escribir "9.  5-2-3"
	Escribir "10. 5-3-2"
	Escribir "11. 5-4-1"
	si mododejuego=2 Entonces
		selec=azar(11)+1
	SiNo
		Leer selec
	FinSi
	si selec>12 o selec=0 Entonces
		Escribir "Seleccion no valida"
		Esperar 2 Segundos
	FinSi
	selecformaciones(selec,talentEqVisi , talentDefVisi, talentMedVisi, talentAtaVisi)
Hasta Que selec<12 o selec<>0
	limpiar pantalla
	selec=0
	Repetir
		Limpiar Pantalla
		Escribir "JUGADOR 2: " eqVisi
		Escribir "Seleccionar ideologia de juego"
		Escribir " "
		Escribir "1. Ultra Ofensiva"
		Escribir "2. Ofensiva"
		Escribir "3. Balanceada"
		Escribir "4. Defensiva"
		Escribir "5. Ultra Defensiva"	
		si mododejuego=2 Entonces
			selec2=azar(5)+1
		SiNo
			Leer selec2
		FinSi		
		si selec2>6 o selec2=0 Entonces
			Escribir "Seleccion no valida"
			Esperar 2 Segundos
		FinSi
	Hasta Que selec<6 o selec=0
	seleccionDCL5(selec, selec2, renEq1, renEq2)
	selec=0
	Repetir
	Limpiar Pantalla	
	Escribir "JUGADOR 1: " eqLocal
	Escribir "Seleccionar ideologia de juego"
	Escribir " "
	Escribir "1. Ultra Ofensiva"
	Escribir "2. Ofensiva"
	Escribir "3. Balanceada"
	Escribir "4. Defensiva"
	Escribir "5. Ultra Defensiva"
	Leer selec
	si selec>6 o selec=0 Entonces
		Escribir "Seleccion no valida"
		Esperar 2 Segundos
	FinSi
Hasta Que selec<6 o selec=0
	seleccionDCL5(selec, selec2, renEq1, renEq2)
	limpiar Pantalla
	selec=0
	Repetir
	Limpiar Pantalla
	Escribir "JUGADOR 1: " eqLocal
	Escribir "Seleccionar presion defensiva"
	Escribir " "
	Escribir "1. Agresiva"
	Escribir "2. Equilibrada"
	Escribir "3. Conservadora"
	
	Leer selec
	si selec>3 o selec=0 Entonces
		Escribir "Seleccion no valida"
		Esperar 2 Segundos
	FinSi
Hasta Que selec<4 o selec<>0
Repetir 
	limpiar Pantalla
	Escribir "JUGADOR 2: " eqVisi
	Escribir "Seleccionar presion defensiva"
	Escribir " "
	Escribir "1. Agresiva"
	Escribir "2. Equilibrada"
	Escribir "3. Conservadora"
	si mododejuego=2 Entonces
		selec2=azar(3)+1
	SiNo
		Leer selec2
	FinSi		
	si selec2>3 o selec2=0 Entonces
		Escribir "Seleccion no valida"
		Esperar 2 Segundos
	FinSi
Hasta Que selec2<4 o selec2<>0
	seleccionDCL3A(selec, selec2, renEq1, renEq2)
	Limpiar Pantalla
	selec=0
	Repetir
		Limpiar Pantalla
		Escribir "JUGADOR 2: " eqVisi
		Escribir "Seleccionar linea de fondo"
		Escribir " "
		Escribir "1. Adelantada"
		Escribir "2. Balanceada"
		Escribir "3. Atrasada"
		si mododejuego=2 Entonces
			selec2=azar(3)+1
		SiNo
			Leer selec2
		FinSi		
		si selec2>3 o selec2=0 Entonces
			Escribir "Seleccion no valida"
			Esperar 2 Segundos
		FinSi
	Hasta Que selec2<4 o selec2<>0
	seleccionDCL3C(selec, selec2, renEq1, renEq2)
	Repetir
	Limpiar Pantalla	
	Escribir "JUGADOR 1: " eqLocal
	Escribir "Seleccionar linea de fondo"
	Escribir " "
	Escribir "1. Adelantada"
	Escribir "2. Balanceada"
	Escribir "3. Atrasada"
	
	Leer selec
	si selec>3 o selec=0 Entonces
		Escribir "Seleccion no valida"
		Esperar 2 Segundos
	FinSi
Hasta Que selec<4 o selec<>0
limpiar Pantalla
Repetir
	Limpiar Pantalla
	selec=0
	Escribir "JUGADOR 1: " eqLocal
	Escribir "Seleccionar tactica de pases"
	Escribir " "
	Escribir "1. Pases largos"
	Escribir "2. Pases intermedios"
	Escribir "3. Pases cortos"
	
	Leer selec
	si selec>3 o selec=0 Entonces
		Escribir "Seleccion no valida"
		Esperar 2 Segundos
	FinSi
Hasta Que selec<4 o selec<>0
Repetir
	limpiar Pantalla
	Escribir "JUGADOR 2: " eqVisi
	Escribir "Seleccionar tactica de pases"
	Escribir " "
	Escribir "1. Pases largos"
	Escribir "2. Pases intermedios"
	Escribir "3. Pases cortos"
	si mododejuego=2 Entonces
		selec2=azar(3)+1
	SiNo
		Leer selec2
	FinSi	
	si selec2>3 o selec2=0 Entonces
		Escribir "Seleccion no valida"
		Esperar 2 Segundos
	FinSi
Hasta Que selec2<4 o selec2<>0
seleccionDCL3A(selec, selec2, renEq1, renEq2)
Repetir
	Limpiar Pantalla
	Repetir
		limpiar Pantalla
		Escribir "JUGADOR 2: " eqVisi
		Escribir "Seleccionar tenencia de la pelota"
		Escribir " "
		Escribir "1. Poseesion"
		Escribir "2. Intermedia"
		Escribir "3. Contraataque"
		si mododejuego=2 Entonces
			selec2=azar(3)+1
		SiNo
			Leer selec2
		FinSi	
		si selec2>3 o selec2=0 Entonces
			Escribir "Seleccion no valida"
			Esperar 2 Segundos
		FinSi
	Hasta Que selec2<4 o selec2<>0
	seleccionDCL3C(selec, selec2, renEq1, renEq2)
	
	selec=0
	Limpiar Pantalla
	Escribir "JUGADOR 1: " eqLocal
	Escribir "Seleccionar tenencia de la pelota"
	Escribir " "
	Escribir "1. Poseesion"
	Escribir "2. Intermedia"
	Escribir "3. Contraataque"
	
	Leer selec
	si selec>3 o selec=0 Entonces
		Escribir "Seleccion no valida"
		Esperar 2 Segundos
	FinSi
Hasta Que selec<4 o selec<>0
Repetir
	Limpiar Pantalla
	selec=0
	Escribir "JUGADOR 1: " eqLocal
	Escribir "Seleccionar zona de ataque"
	Escribir " "
	Escribir "1. Centro"
	Escribir "2. Equilibrada"
	Escribir "3. Laterales"
	
	Leer selec
	si selec>3 o selec=0 Entonces
		Escribir "Seleccion no valida"
		Esperar 2 Segundos
	FinSi
Hasta Que selec<4 o selec<>0
Repetir
	limpiar Pantalla
	Escribir "JUGADOR 2: " eqVisi
	Escribir "Seleccionar zona de ataque"
	Escribir " "
	Escribir "1. Centro"
	Escribir "2. Equilibrada"
	Escribir "3. Laterales"
	si mododejuego=2 Entonces
		selec2=azar(3)+1
	SiNo
		Leer selec2
	FinSi	
	si selec2>3 o selec2=0 Entonces
		Escribir "Seleccion no valida"
		Esperar 2 Segundos
	FinSi
Hasta Que selec2<4 o selec2<>0
seleccionDCL3B(selec, selec2, renEq1, renEq2)
	Limpiar Pantalla
	selec=0
	Escribir "Rendimiento Local " renEq1
	Escribir "Talent Local " talentDefLocal " ", talentMedLocal " ", talentAtaLocal
	Escribir "Rendimiento Visitante " renEq2
	Escribir "Talent Visitante " talentDefVisi " ", talentMedVisi," " talentAtaVisi
	talEq1=talentEqLocal
	talEq2=talentEqVisi
	ParEq1=talEq1+RenEq1
	ParEq2=talEq2+RenEq2
	difpart=ParEq1-ParEq2
	Escribir " "
	Escribir "Jugadores Calentando..."
	Esperar 5 Segundos
	Escribir "Precione cualquier tecla para inciar partido"
	Esperar Tecla
	Limpiar Pantalla
FinFuncion
// CALCULO DEL PARTIDO ---------------------------------------------------------------------------------------------------------------
Funcion partido ( talEq1,talEq2,eqLocal,eqVisi,gol1 Por Referencia,gol2 Por Referencia,oca2 Por Referencia,oca1 Por Referencia, mododejuego, difpart Por Referencia, talentDefLocal,talentMedLocal,talentAtaLocal,talentDefVisi,talentMedVisi,talentAtaVisi)
	gola,golb,c,tiempoPartidoTotal,tiempoPartidoActual,situacionesLocal,situacionesVisi,SueEq1,SueEq2,disparo1,disparo2,arquero,arquero1,arquero2,arquero3,arquero4,oca11,oca22 es entero

// CALCULO DE RESULTADO
Si difpart < -50 Entonces
	golb=5
	gola=azar(1)
	oca2=oca2+5
	oca1=oca1+1
FinSi

Si difpart < -40 y difpart>= -50 Entonces
	golb=4
	gola=azar(2)
	oca2=oca2+4
	oca1=oca1+1
FinSi

Si difpart < -30 y difpart>= -40 entonces
	golb=3
	gola=azar(1)
	oca2=oca2+4
	oca1=oca1+2
FinSi
Si difpart < -20 y difpart>= -30 entonces
	golb=azar(2)+1
	gola=azar(1)
	oca2=oca2+3
	oca1=oca1+2
FinSi
Si difpart < -10 y difpart>= -20 entonces
	golb=1
	gola=0
	oca2=oca2+2
	oca1=oca1+1
FinSi
Si difpart < 10 y difpart>= -10 entonces
	golb=azar(1)
	gola=azar(1)
	oca2=oca2+2
	oca1=oca1+2
FinSi
Si difpart < 20 y difpart>= 40 entonces
	golb=0
	gola=1
	oca2=oca2+1
	oca1=oca1+2
FinSi
Si difpart < 30 y difpart>= 20 entonces
	golb=0
	gola=azar(1)+1
	oca2=oca2+2
	oca1=oca1+3
FinSi
Si difpart < 40 y difpart>= 30 entonces
	golb=azar(1)
	gola=azar(2)+1
	oca2=oca2+2
	oca1=oca1+4
FinSi
Si difpart < 50 y difpart>= 40 entonces
	golb=azar(1)
	gola=azar(2)+2
	oca2=oca2+1
	oca1=oca1+4
FinSi
Si difpart >= 50 entonces
	golb=azar(1)
	gola=azar(2)+3
	oca2=oca2+1
	oca1=oca1+5
FinSi

	si talentAtaLocal-talentDefVisi >= 40 y talentAtaLocal-talentDefVisi < 20 entonces
		oca1=oca1+2
	FinSi
	si talentAtaLocal-talentDefVisi >= 20 y talentAtaLocal-talentDefVisi < 0 entonces
		oca1=oca1+2
	FinSi
	si talentAtaVisi-talentDefLocal >= 40 y talentAtaVisi-talentDefLocal < 20 Entonces
		oca2=oca2+2
	FinSi
	si talentAtaVisi-talentDefLocal >= 20 y talentAtaVisi-talentDefLocal < 0 Entonces
		oca2=oca2+2
	FinSi
	si talentMedLocal-talentMedVisi >= 40 y talentMedLocal-talentMedVisi < 20 Entonces
		oca1=oca1+2
	FinSi
	si talentMedLocal-talentMedVisi >= 20 y talentMedLocal-talentMedVisi < 0 Entonces
		oca1=oca1+1
	FinSi
	si talentMedVisi-talentMedLocal >= 40 y talentMedVisi-talentMedLocal < 40 Entonces
		oca2=oca2+1
	FinSi
	si talentMedVisi-talentMedLocal >= 20 y talentMedVisi-talentMedLocal < 0 Entonces
		oca2=oca2+1
FinSi
// GOLES 
gola=gola+SueEq1
golb=golb+SueEq2
// OCACIONES
oca2=oca2+3
oca1=oca1+3
// MARCADOR
si mododejuego=1 Entonces
	Escribir eqLocal " " gola " - " golb " " eqVisi
	Escribir " "
	Escribir "pulse una tecla para Menu"
	Esperar Tecla
	Limpiar Pantalla
FinSi
si mododejuego=3 o mododejuego=2 entonces

	Dimension situacionesLocal(10)
	Dimension situacionesVisi(10)
	si oca1<2 Entonces
		oca1=2
	FinSi
	si oca2<2 Entonces
		oca2=2
	FinSi
	Repetir
		situacionesLocal(oca1)=azar(92)+1
		oca1=oca1-1
	Hasta Que oca1=1
	Repetir
		situacionesVisi(oca2)=azar(92)+1
		oca2=oca2-1
	Hasta Que oca2=1
	tiempoPartidoTotal=azar(5)+90
	gol1=0
	gol2=0
	tiempoPartidoActual=0
	Repetir
		c=10
		si tiempoPartidoActual<45 Entonces
			Escribir eqlocal " " gol1 " - " gol2 " " eqVisi " / 1er " tiempoPartidoActual ":00"
		SiNo
			Escribir eqlocal " " gol1 " - " gol2 " " eqVisi " / 2do " tiempoPartidoActual ":00"
		FinSi
		tiempoPartidoActual=tiempoPartidoActual+1
		Esperar 1 Segundos
		Repetir
			c=c-1
			si	situacionesLocal(c)=tiempoPartidoActual
				Escribir "Ocacion: " eqLocal
				si mododejuego=2 Entonces
					playSituacionIAAtaja(disparo1,arquero1,arquero2,arquero3,arquero4,eqLocal,eqVisi)
				SiNo
					playSituacion(disparo1,arquero1,arquero2,arquero3,arquero4,eqLocal,eqVisi)
				FinSi
				si disparo1=0 o disparo1>6 Entonces
					Escribir "Disparaaa...!"
					Esperar 2 Segundos
					Escribir "Disparo Errado"
					Esperar 2 Segundos
				SiNo
				si disparo1<>arquero1 y disparo1<>arquero2 y disparo1<>arquero3 y disparo1<>arquero4 Entonces
					gol1=gol1+1
					Escribir "Disparaaa...!"
					Esperar 2 Segundos
					Escribir "GOOOL!"
					Esperar 2 Segundos
				FinSi
				si disparo1=arquero1 o disparo1=arquero2 o disparo1=arquero3 o disparo1=arquero4 Entonces
					Escribir "Disparaaa...!"
					Esperar 2 Segundos
					Escribir "Atajada!"
				FinSi
				FinSi
			FinSi
			si	situacionesVisi(c)=tiempoPartidoActual
				Escribir "Ocacion: " eqVisi
				si mododejuego=2 Entonces
					playSituacionIADispara(disparo1,arquero1,arquero2,arquero3,arquero4,eqLocal,eqVisi)
				SiNo
					playSituacion(disparo1,arquero1,arquero2,arquero3,arquero4,eqLocal,eqVisi)
				FinSi
				si disparo1=0 o disparo1>6 Entonces
					Escribir "Disparaaa...!"
					Esperar 2 Segundos
					Escribir "Disparo Errado"
					Esperar 2 Segundos
				SiNo
				si disparo1<>arquero1 y disparo1<>arquero2 y disparo1<>arquero3 y disparo1<>arquero4 Entonces
					gol2=gol2+1
					Escribir "Disparaaa...!"
					Esperar 2 Segundos
					Escribir "GOOOL!"
					Esperar 2 Segundos
				FinSi
				si disparo1=arquero1 o disparo1=arquero2 o disparo1=arquero3 o disparo1=arquero4 Entonces
					Escribir "Disparaaa...!"
					Esperar 2 Segundos
					Escribir "Atajada!"
				FinSi
				
				FinSi
			FinSi
		Hasta Que c=1
		Limpiar Pantalla
	Hasta Que tiempoPartidoActual=tiempoPartidoTotal


	Escribir "MARCADOR FINAL"
		Escribir eqlocal " " gol1
		Escribir eqVisi " " gol2
	
		Esperar 2 Segundos
		Escribir "Pulse cualquier tecla para continuar"
	Esperar Tecla
	Limpiar Pantalla
FinSi

FinFuncion


Funcion playSituacion (disparo1 Por Referencia,arquero1 Por Referencia,arquero2 Por Referencia,arquero3 Por Referencia,arquero4 Por Referencia,eqLocal,eqVisi)
	Escribir "Disparo: " 
	Escribir "  ______________"	
	Escribir "   1    2    3 "
	Escribir "               "
	Escribir "   4    5    6 "
	Leer disparo1
	Limpiar Pantalla
	Escribir " "
	Escribir "Arquero: "
	Escribir "  ______________"	
	Escribir "   1    2    3 "
	Escribir "               "
	Escribir "   4    5    6 "
	Leer arquero1
	Leer arquero2
	Leer arquero3
	Leer arquero4
	Limpiar Pantalla
FinFuncion

Funcion playSituacionIADispara (disparo1 Por Referencia,arquero1 Por Referencia,arquero2 Por Referencia,arquero3 Por Referencia,arquero4 Por Referencia,eqLocal,eqVisi)
	Escribir "Disparo: " 
	Escribir "  ______________"	
	Escribir "   1    2    3 "
	Escribir "               "
	Escribir "   4    5    6 "
	disparo1=azar(7)+1
	Limpiar Pantalla
	Escribir " "
	Escribir "Arquero: "
	Escribir "  ______________"	
	Escribir "   1    2    3 "
	Escribir "               "
	Escribir "   4    5    6 "
	Leer arquero1
	Leer arquero2
	Leer arquero3
	Leer arquero4
	Limpiar Pantalla
FinFuncion
Funcion playSituacionIAAtaja (disparo1 Por Referencia,arquero1 Por Referencia,arquero2 Por Referencia,arquero3 Por Referencia,arquero4 Por Referencia,eqLocal,eqVisi)
	Escribir "Disparo: " 
	Escribir "  ______________"	
	Escribir "   1    2    3 "
	Escribir "               "
	Escribir "   4    5    6 "
	Leer disparo1
	Limpiar Pantalla
	Escribir " "
	Escribir "Arquero: "
	Escribir "  ______________"	
	Escribir "   1    2    3 "
	Escribir "               "
	Escribir "   4    5    6 "
	Repetir
	arquero1=azar(6)+1
	arquero2=azar(6)+1
	arquero3=azar(6)+1
	arquero4=99
Hasta Que arquero1<>arquero2 y arquero1<>arquero3 y arquero1<>arquero4 y arquero2<>arquero3 y arquero2<>arquero4 y arquero3<>arquero4
	Limpiar Pantalla
FinFuncion
// -----------------------------------------------------------------------------------------------------------// LIGAS -------------------------------------------------------------------------------------------
Funcion menuLigasEscribir (liga)
	Escribir "1." liga(1)
	Escribir "2." liga(2)
	Escribir "3." liga(3)
	Escribir "4." liga(4)
	Escribir "5." liga(5)
	Escribir "6." liga(6)
	Escribir "7." liga(7)
	Escribir " "
	Escribir "9. <- Volver atras"
FinFuncion

//NOMBRES DE LOS CLUBES PARA EL MENU --------------------------------------------------------------------------------------------------------------
Funcion ligaSuperliga (nombreEquipo, local Por Referencia, visitante Por Referencia )
	Repetir
	Escribir "       Superliga Argentina"	
	Escribir "     Seleccionar Equipo Local"
	Escribir " "
	Escribir "1." nombreEquipo[1] "        15." nombreEquipo[15]
	Escribir "2." nombreEquipo[2] "    16." nombreEquipo[16]
	Escribir "3." nombreEquipo[3] "      17." nombreEquipo[17]
	Escribir "4." nombreEquipo[4] "      18." nombreEquipo[18]
	Escribir "5." nombreEquipo[5] "              19." nombreEquipo[19]
	Escribir "6." nombreEquipo[6] "              20." nombreEquipo[20]
	Escribir "7." nombreEquipo[7] "          21." nombreEquipo[21]
	Escribir "8." nombreEquipo[8] "             22." nombreEquipo[22]
	Escribir "9." nombreEquipo[9] "                 23." nombreEquipo[23]
	Escribir "10." nombreEquipo[10] "   24." nombreEquipo[24] 
	Escribir "11." nombreEquipo[11] "          25." nombreEquipo[25]
	Escribir "12." nombreEquipo[12] " 26." nombreEquipo[26]
	Escribir "13." nombreEquipo[13] "           27." nombreEquipo[27]
	Escribir "14." nombreEquipo[14] "              28." nombreEquipo[28]
	Leer local
	Limpiar Pantalla
	Escribir "     Seleccionar Equipo Visitante"
	Escribir ""
	Escribir "1." nombreEquipo[1] "        15." nombreEquipo[15]
	Escribir "2." nombreEquipo[2] "    16." nombreEquipo[16]
	Escribir "3." nombreEquipo[3] "      17." nombreEquipo[17]
	Escribir "4." nombreEquipo[4] "      18." nombreEquipo[18]
	Escribir "5." nombreEquipo[5] "              19." nombreEquipo[19]
	Escribir "6." nombreEquipo[6] "              20." nombreEquipo[20]
	Escribir "7." nombreEquipo[7] "          21." nombreEquipo[21]
	Escribir "8." nombreEquipo[8] "             22." nombreEquipo[22]
	Escribir "9." nombreEquipo[9] "                 23." nombreEquipo[23]
	Escribir "10." nombreEquipo[10] "   24." nombreEquipo[24] 
	Escribir "11." nombreEquipo[11] "          25." nombreEquipo[25]
	Escribir "12." nombreEquipo[12] " 26." nombreEquipo[26]
	Escribir "13." nombreEquipo[13] "           27." nombreEquipo[27]
	Escribir "14." nombreEquipo[14] "              28." nombreEquipo[28]
	Leer visitante
	Limpiar Pantalla
	Si local=visitante Entonces
		Limpiar Pantalla
		Escribir "No se permite elegir el mismo equipo dos veces"
		Esperar 2 Segundos
		Limpiar Pantalla
	FinSi
	Si local>28 o visitante>28 Entonces
		Limpiar Pantalla
		Escribir "Seleccion Incorrecta"
		Esperar 2 Segundos
		Limpiar Pantalla
	FinSi
Hasta Que local<>visitante y local<29 y visitante<29
FinFuncion

Funcion ligaSantander (nombreEquipo, local Por Referencia, visitante Por Referencia)
	Repetir
	Escribir "         Liga Santander"
	Escribir "     Seleccionar Equipo Local"
	Escribir " "
	Escribir "1." nombreEquipo[61] "               11." nombreEquipo[71]
	Escribir "2." nombreEquipo[62] "      12." nombreEquipo[72]
	Escribir "3." nombreEquipo[63] "      13." nombreEquipo[73]
	Escribir "4." nombreEquipo[64] "            14." nombreEquipo[74]
	Escribir "5." nombreEquipo[65] "                15." nombreEquipo[75]
	Escribir "6." nombreEquipo[66] "        16." nombreEquipo[76]
	Escribir "7." nombreEquipo[67] "  17." nombreEquipo[77]
	Escribir "8." nombreEquipo[68] "                18." nombreEquipo[78]
	Escribir "9." nombreEquipo[69] "             19." nombreEquipo[79]
	Escribir "10." nombreEquipo[70] "              20." nombreEquipo[80] 
	Leer local
	Limpiar Pantalla
	Escribir "        Liga Santander"
	Escribir "    Seleccionar Equipo Visitante"
	Escribir " "
	Escribir "1." nombreEquipo[61] "               11." nombreEquipo[71]
	Escribir "2." nombreEquipo[62] "      12." nombreEquipo[72]
	Escribir "3." nombreEquipo[63] "      13." nombreEquipo[73]
	Escribir "4." nombreEquipo[64] "            14." nombreEquipo[74]
	Escribir "5." nombreEquipo[65] "                15." nombreEquipo[75]
	Escribir "6." nombreEquipo[66] "        16." nombreEquipo[76]
	Escribir "7." nombreEquipo[67] "  17." nombreEquipo[77]
	Escribir "8." nombreEquipo[68] "                18." nombreEquipo[78]
	Escribir "9." nombreEquipo[69] "             19." nombreEquipo[79]
	Escribir "10." nombreEquipo[70] "              20." nombreEquipo[80]
	Leer visitante
	Limpiar Pantalla
	Si local=visitante Entonces
		Limpiar Pantalla
		Escribir "No se permite elegir el mismo equipo dos veces"
		Esperar 2 Segundos
		Limpiar Pantalla
	FinSi
	Si local>20 o visitante>20 Entonces
		Limpiar Pantalla
		Escribir "Seleccion Incorrecta"
		Esperar 2 Segundos
		Limpiar Pantalla
	FinSi
Hasta Que local<>visitante y local<21 y visitante<21
	local=local+60
	visitante=visitante+60
FinFuncion

Funcion ligaPremier (nombreEquipo, local Por Referencia, visitante Por Referencia)
	Repetir
	Escribir "            Premier League"
	Escribir "        Seleccionar Equipo Local"
	Escribir " "
	Escribir "1." nombreEquipo[81] "         11." nombreEquipo[91]
	Escribir "2." nombreEquipo[82] "        12." nombreEquipo[92]
	Escribir "3." nombreEquipo[83] "  13." nombreEquipo[93]
	Escribir "4." nombreEquipo[84] "            14." nombreEquipo[94]
	Escribir "5." nombreEquipo[85] "            15." nombreEquipo[95]
	Escribir "6." nombreEquipo[86] "     16." nombreEquipo[96]
	Escribir "7." nombreEquipo[87] "            17." nombreEquipo[97]
	Escribir "8." nombreEquipo[88] "       18." nombreEquipo[98]
	Escribir "9." nombreEquipo[89] "     19." nombreEquipo[99]
	Escribir "10." nombreEquipo[90] "         20." nombreEquipo[100] 
	Leer local
	Limpiar Pantalla
	Escribir "            Premier League"
	Escribir "        Seleccionar Equipo Local"
	Escribir " "
	Escribir "1." nombreEquipo[81] "         11." nombreEquipo[91]
	Escribir "2." nombreEquipo[82] "        12." nombreEquipo[92]
	Escribir "3." nombreEquipo[83] "  13." nombreEquipo[93]
	Escribir "4." nombreEquipo[84] "            14." nombreEquipo[94]
	Escribir "5." nombreEquipo[85] "            15." nombreEquipo[95]
	Escribir "6." nombreEquipo[86] "     16." nombreEquipo[96]
	Escribir "7." nombreEquipo[87] "            17." nombreEquipo[97]
	Escribir "8." nombreEquipo[88] "       18." nombreEquipo[98]
	Escribir "9." nombreEquipo[89] "     19." nombreEquipo[99]
	Escribir "10." nombreEquipo[90] "         20." nombreEquipo[100]
	Leer Visitante
	Limpiar Pantalla
	Si local=visitante Entonces
		Limpiar Pantalla
		Escribir "No se permite elegir el mismo equipo dos veces"
		Esperar 2 Segundos
		Limpiar Pantalla
	FinSi
	Si local>20 o visitante>20 Entonces
		Limpiar Pantalla
		Escribir "Seleccion Incorrecta"
		Esperar 2 Segundos
		Limpiar Pantalla
	FinSi
Hasta Que local<>visitante y local<21 y visitante<21
local=local+80
visitante=visitante+80
FinFuncion

Funcion ligaSerieA (nombreEquipo, local Por Referencia, visitante Por Referencia)
	Repetir
	Escribir "            Serie A"
	Escribir "        Seleccionar Equipo Local"
	Escribir " "
	Escribir "1." nombreEquipo[101] "       11." nombreEquipo[111]
	Escribir "2." nombreEquipo[102] "      12." nombreEquipo[112]
	Escribir "3." nombreEquipo[103] "        13." nombreEquipo[113]
	Escribir "4." nombreEquipo[104] "       14." nombreEquipo[114]
	Escribir "5." nombreEquipo[105] "  15." nombreEquipo[115]
	Escribir "6." nombreEquipo[106] "        16." nombreEquipo[116]
	Escribir "7." nombreEquipo[107] "     17." nombreEquipo[117]
	Escribir "8." nombreEquipo[108] "          18." nombreEquipo[118]
	Escribir "9." nombreEquipo[109] "  19." nombreEquipo[119]
	Escribir "10." nombreEquipo[110] "         20." nombreEquipo[120] 
	Leer local
	Limpiar Pantalla
	Escribir "           Serie A"
	Escribir " Seleccionar Equipo Visitante"
	Escribir " "
	Escribir "1." nombreEquipo[101] "       11." nombreEquipo[111]
	Escribir "2." nombreEquipo[102] "      12." nombreEquipo[112]
	Escribir "3." nombreEquipo[103] "        13." nombreEquipo[113]
	Escribir "4." nombreEquipo[104] "       14." nombreEquipo[114]
	Escribir "5." nombreEquipo[105] "  15." nombreEquipo[115]
	Escribir "6." nombreEquipo[106] "        16." nombreEquipo[116]
	Escribir "7." nombreEquipo[107] "     17." nombreEquipo[117]
	Escribir "8." nombreEquipo[108] "          18." nombreEquipo[118]
	Escribir "9." nombreEquipo[109] "  19." nombreEquipo[119]
	Escribir "10." nombreEquipo[110] "         20." nombreEquipo[120]  
	Leer Visitante
	Limpiar Pantalla
	Si local=visitante Entonces
		Limpiar Pantalla
		Escribir "No se permite elegir el mismo equipo dos veces"
		Esperar 2 Segundos
		Limpiar Pantalla
	FinSi
	Si local>20 o visitante>20 Entonces
		Limpiar Pantalla
		Escribir "Seleccion Incorrecta"
		Esperar 2 Segundos
		Limpiar Pantalla
	FinSi
Hasta Que local<>visitante y local<21 y visitante<21
local=local+100
visitante=visitante+100
FinFuncion

Funcion otrosEuropa (nombreEquipo, local Por Referencia, visitante Por Referencia)
	Repetir
		Escribir "         Otros Europa"
		Escribir "   Seleccionar Equipo Local"
		Escribir " "
		Escribir "1." nombreEquipo[121] "         6." nombreEquipo[126]
		Escribir "2." nombreEquipo[122] "  7." nombreEquipo[127]
		Escribir "3." nombreEquipo[123] "      8." nombreEquipo[128]
		Escribir "4." nombreEquipo[124] "    9." nombreEquipo[129]
		Escribir "5." nombreEquipo[125] "      10." nombreEquipo[130]
		Leer local
		Limpiar Pantalla
		Escribir "         Otros Europa"
		Escribir "   Seleccionar Equipo Visitante"
		Escribir " "
		Escribir "1." nombreEquipo[121] "         6." nombreEquipo[126]
		Escribir "2." nombreEquipo[122] "  7." nombreEquipo[127]
		Escribir "3." nombreEquipo[123] "      8." nombreEquipo[128]
		Escribir "4." nombreEquipo[124] "    9." nombreEquipo[129]
		Escribir "5." nombreEquipo[125] "      10." nombreEquipo[130]
		Leer visitante
		Limpiar Pantalla
		Si local=visitante Entonces
			Limpiar Pantalla
			Escribir "No se permite elegir el mismo equipo dos veces"
			Esperar 2 Segundos
			Limpiar Pantalla
		FinSi
		Si local>10 o visitante>10 Entonces
			Limpiar Pantalla
			Escribir "Seleccion Incorrecta"
			Esperar 2 Segundos
			Limpiar Pantalla
		FinSi
	Hasta Que local<>visitante y local<11 y visitante<11
	local=local+120
	visitante=visitante+120
FinFuncion

Funcion otrosAmerica (nombreEquipo, local Por Referencia, visitante Por Referencia)
	Repetir
		Escribir "             Otros America"
		Escribir "       Seleccionar Equipo Local"
		Escribir " "
		Escribir "1." nombreEquipo[131] "  6." nombreEquipo[136]
		Escribir "2." nombreEquipo[132] "       7." nombreEquipo[137]
		Escribir "3." nombreEquipo[133] "   8." nombreEquipo[138]
		Escribir "4." nombreEquipo[134] "          9." nombreEquipo[139]
		Escribir "5." nombreEquipo[135] "           10." nombreEquipo[140]
		Leer local
		Limpiar Pantalla
		Escribir "             Otros America"
		Escribir "       Seleccionar Equipo Visitante"
		Escribir ""
		Escribir "1." nombreEquipo[131] "  6." nombreEquipo[136]
		Escribir "2." nombreEquipo[132] "       7." nombreEquipo[137]
		Escribir "3." nombreEquipo[133] "   8." nombreEquipo[138]
		Escribir "4." nombreEquipo[134] "          9." nombreEquipo[139]
		Escribir "5." nombreEquipo[135] "           10." nombreEquipo[140]
		Leer visitante
		Limpiar Pantalla
		Si local=visitante Entonces
			Limpiar Pantalla
			Escribir "No se permite elegir el mismo equipo dos veces"
			Esperar 2 Segundos
			Limpiar Pantalla
		FinSi
		Si local>10 o visitante>10 Entonces
			Limpiar Pantalla
			Escribir "Seleccion Incorrecta"
			Esperar 2 Segundos
			Limpiar Pantalla
		FinSi
	Hasta Que local<>visitante y local<11 y visitante<11
	local=local+130
	visitante=visitante+130
FinFuncion

Funcion seleccionesNacionales (nombreEquipo, local Por Referencia, visitante Por Referencia)
	Repetir
	Escribir " 	    Selecciones Nacionales"
	Escribir "    Seleccionar Equipo Local"
	Escribir " "
	Escribir "1." nombreEquipo[29] "       17." nombreEquipo[45]
	Escribir "2." nombreEquipo[30] "         18." nombreEquipo[46]
	Escribir "3." nombreEquipo[31] "      19." nombreEquipo[47]
	Escribir "4." nombreEquipo[32] "      20." nombreEquipo[48]
	Escribir "5." nombreEquipo[33] "         21." nombreEquipo[49]
	Escribir "6." nombreEquipo[34] "        22." nombreEquipo[50]
	Escribir "7." nombreEquipo[35] "       23." nombreEquipo[51]
	Escribir "8." nombreEquipo[36] "  24." nombreEquipo[52]
	Escribir "9." nombreEquipo[37] "     25." nombreEquipo[53]
	Escribir "10." nombreEquipo[38] "       26." nombreEquipo[54] 
	Escribir "11." nombreEquipo[39] "     27." nombreEquipo[55]
	Escribir "12." nombreEquipo[40] "        28." nombreEquipo[56]
	Escribir "13." nombreEquipo[41] "        29." nombreEquipo[57]
	Escribir "14." nombreEquipo[42] "       30." nombreEquipo[58]
	Escribir "15." nombreEquipo[43] "    31." nombreEquipo[59]
	Escribir "16." nombreEquipo[44] "          32." nombreEquipo[60]
	Leer local
	Limpiar Pantalla
	Escribir " 	    Selecciones Nacionales"
	Escribir "    Seleccionar Equipo Visitante"
	Escribir " "
	Escribir "1." nombreEquipo[29] "       17." nombreEquipo[45]
	Escribir "2." nombreEquipo[30] "         18." nombreEquipo[46]
	Escribir "3." nombreEquipo[31] "      19." nombreEquipo[47]
	Escribir "4." nombreEquipo[32] "      20." nombreEquipo[48]
	Escribir "5." nombreEquipo[33] "         21." nombreEquipo[49]
	Escribir "6." nombreEquipo[34] "        22." nombreEquipo[50]
	Escribir "7." nombreEquipo[35] "       23." nombreEquipo[51]
	Escribir "8." nombreEquipo[36] "  24." nombreEquipo[52]
	Escribir "9." nombreEquipo[37] "     25." nombreEquipo[53]
	Escribir "10." nombreEquipo[38] "       26." nombreEquipo[54] 
	Escribir "11." nombreEquipo[39] "     27." nombreEquipo[55]
	Escribir "12." nombreEquipo[40] "        28." nombreEquipo[56]
	Escribir "13." nombreEquipo[41] "        29." nombreEquipo[57]
	Escribir "14." nombreEquipo[42] "       30." nombreEquipo[58]
	Escribir "15." nombreEquipo[43] "    31." nombreEquipo[59]
	Escribir "16." nombreEquipo[44] "          32." nombreEquipo[60]
	Leer visitante
	Limpiar Pantalla
	Si local=visitante Entonces
		Limpiar Pantalla
		Escribir "No se permite elegir el mismo equipo dos veces"
		Esperar 2 Segundos
		Limpiar Pantalla
	FinSi
	Si local>32 o visitante>32 Entonces
		Limpiar Pantalla
		Escribir "Seleccion Incorrecta"
		Esperar 2 Segundos
		Limpiar Pantalla
	FinSi
Hasta Que local<>visitante y local<33 y visitante<33
	local=local+28
	visitante=visitante+28
FinFuncion
//MARCADOR DE INICIO PARA PARTIDOS AMISTOSOS ---------------------------------------------------------------------------------------------------------------
Funcion  marcador ( eqLocal,eqVisi )
	Escribir "------------------------------"
	Escribir "    ", eqLocal " VS ", eqVisi
	Escribir "------------------------------"
	Esperar 2 Segundos
	Limpiar Pantalla
FinFuncion

Funcion selecformaciones (selec,talent , talentDef por Referencia, talentMed por referencia, talentAta por referencia)
	formaciones es entero
	Dimension formaciones(12,4)
	formaciones(1,1)=talent-20
	formaciones(1,2)=talent-20
	formaciones(1,3)=talent+40
	formaciones(2,1)=talent-20
	formaciones(2,2)=talent+0
	formaciones(2,3)=talent+20
	formaciones(3,1)=talent-20
	formaciones(3,2)=talent+20
	formaciones(3,3)=talent+0
	formaciones(4,1)=talent-20
	formaciones(4,2)=talent+40
	formaciones(4,3)=talent-20
	formaciones(5,1)=talent+0
	formaciones(5,2)=talent-40
	formaciones(5,3)=talent+40
	formaciones(6,1)=talent+0
	formaciones(6,2)=talent-20
	formaciones(6,3)=talent+20
	formaciones(7,1)=talent+0
	formaciones(7,2)=talent+0
	formaciones(7,3)=talent+0
	formaciones(8,1)=talent+0
	formaciones(8,2)=talent+20
	formaciones(8,3)=talent-20
	formaciones(9,1)=talent+20
	formaciones(9,2)=talent-40
	formaciones(9,3)=talent+20
	formaciones(10,1)=talent+20
	formaciones(10,2)=talent-20
	formaciones(10,3)=talent+0
	formaciones(11,1)=talent+20
	formaciones(11,2)=talent+0
	formaciones(11,3)=talent-20	
	
	talentDef=formaciones(selec,1)
	talentMed=formaciones(selec,2)
	talentAta=formaciones(selec,3)
	
FinFuncion

Funcion seleccionDCL5 (selec, selec2, renEq1 Por Referencia, renEq2 Por Referencia)
	Segun selec Hacer
		1:
			Segun selec2 hacer
				1:
					renEq1=renEq1+5
					renEq2=renEq2+5
				2:
					renEq1=renEq1+2
					renEq2=renEq2+10
				3:
					renEq1=renEq1+0
					renEq2=renEq2+8
				4:
					renEq1=renEq1+8
					renEq2=renEq2+0
				5:
					renEq1=renEq1+10
					renEq2=renEq2+2
			FinSegun
		2:
			Segun selec2 hacer
				1:
					renEq1=renEq1+10
					renEq2=renEq2+2
				2:
					renEq1=renEq1+5
					renEq2=renEq2+5
				3:
					renEq1=renEq1+2
					renEq2=renEq2+10
				4:
					renEq1=renEq1+0
					renEq2=renEq2+8
				5:
					renEq1=renEq1+8
					renEq2=renEq2+0
			FinSegun
		3:
			Segun selec2 hacer
				1:
					renEq1=renEq1+8
					renEq2=renEq2+0
				2:
					renEq1=renEq1+10
					renEq2=renEq2+2
				3:
					renEq1=renEq1+5
					renEq2=renEq2+5
				4:
					renEq1=renEq1+2
					renEq2=renEq2+10
				5:
					renEq1=renEq1+0
					renEq2=renEq2+8
			FinSegun
		4:
			Segun selec2 hacer
				1:
					renEq1=renEq1+0
					renEq2=renEq2+8
				2:
					renEq1=renEq1+8
					renEq2=renEq2+0
				3:
					renEq1=renEq1+10
					renEq2=renEq2+2
				4:
					renEq1=renEq1+5
					renEq2=renEq2+5
				5:
					renEq1=renEq1+2
					renEq2=renEq2+10
			FinSegun
		5:
			Segun selec2 hacer
				1:
					renEq1=renEq1+2
					renEq2=renEq2+10
				2:
					renEq1=renEq1+0
					renEq2=renEq2+8
				3:
					renEq1=renEq1+8
					renEq2=renEq2+0
				4:
					renEq1=renEq1+10
					renEq2=renEq2+2
				5:
					renEq1=renEq1+5
					renEq2=renEq2+5
			FinSegun
	Fin Segun
	
FinFuncion

Funcion seleccionDCL3A (selec, selec2, renEq1 por referencia, renEq2 Por Referencia)
	Segun selec Hacer
		1:
			Segun selec2 hacer
				1:
					renEq1=renEq1+5
					renEq2=renEq2+5
				2:
					renEq1=renEq1+0
					renEq2=renEq2+10
				3:
					renEq1=renEq1+10
					renEq2=renEq2+0
			FinSegun
		2:
			Segun selec2 hacer
				1:
					renEq1=renEq1+10
					renEq2=renEq2+0
				2:
					renEq1=renEq1+5
					renEq2=renEq2+5
				3:
					renEq1=renEq1+0
					renEq2=renEq2+10
			FinSegun
		3:
			Segun selec2 hacer
				1:
					renEq1=renEq1+0
					renEq2=renEq2+10
				2:
					renEq1=renEq1+10
					renEq2=renEq2+0
				3:
					renEq1=renEq1+5
					renEq2=renEq2+5
			FinSegun
	FinSegun
FinFuncion


Funcion seleccionDCL3B (selec, selec2, renEq1 por referencia, renEq2 Por Referencia)
	Segun selec Hacer
		1:
			Segun selec2 hacer
				1:
					renEq1=renEq1+0
					renEq2=renEq2+10
				2:
					renEq1=renEq1+5
					renEq2=renEq2+5
				3:
					renEq1=renEq1+10
					renEq2=renEq2+0
			FinSegun
		2:
			Segun selec2 hacer
				1:
					renEq1=renEq1+0
					renEq2=renEq2+10
				2:
					renEq1=renEq1+10
					renEq2=renEq2+0
				3:
					renEq1=renEq1+5
					renEq2=renEq2+5
			FinSegun
		3:
			Segun selec2 hacer
				1:
					renEq1=renEq1+5
					renEq2=renEq2+5
				2:
					renEq1=renEq1+10
					renEq2=renEq2+0
				3:
					renEq1=renEq1+0
					renEq2=renEq2+10
			FinSegun
	FinSegun
FinFuncion



Funcion seleccionDCL3C (selec, selec2, renEq1 por referencia, renEq2 Por Referencia)
	Segun selec Hacer
		1:
			Segun selec2 hacer
				1:
					renEq1=renEq1+10
					renEq2=renEq2+0
				2:
					renEq1=renEq1+0
					renEq2=renEq2+10
				3:
					renEq1=renEq1+5
					renEq2=renEq2+5
			FinSegun
		2:
			Segun selec2 hacer
				1:
					renEq1=renEq1+5
					renEq2=renEq2+5
				2:
					renEq1=renEq1+0
					renEq2=renEq2+10
				3:
					renEq1=renEq1+10
					renEq2=renEq2+0
			FinSegun
		3:
			Segun selec2 hacer
				1:
					renEq1=renEq1+5
					renEq2=renEq2+5
				2:
					renEq1=renEq1+10
					renEq2=renEq2+0
				3:
					renEq1=renEq1+10
					renEq2=renEq2+0
			FinSegun
	FinSegun
FinFuncion


Funcion seleccionDCL6 (selec, selec2, renEq1 por referencia)
	Segun selec Hacer
		1:
			Segun selec2 Hacer
				1:
					renEq1=renEq1+5
					renEq2=renEq2+5
				2:
					renEq1=renEq1+2
					renEq2=renEq2+10
				3:
					renEq1=renEq1+0
					renEq2=renEq2+8
				4:
					renEq1=renEq1+azar(4)+3
					renEq2=renEq2+azar(4)+3
				5:
					renEq1=renEq1+8
					renEq2=renEq2+0
				6:
					renEq1=renEq1+10
					renEq2=renEq2+2
			Fin Segun
		2:
			Segun selec2 Hacer
				1:
					renEq1=renEq1+10
					renEq2=renEq2+2
				2:
					renEq1=renEq1+5
					renEq2=renEq2+5
				3:
					renEq1=renEq1+2
					renEq2=renEq2+10
				4:
					renEq1=renEq1+0
					renEq2=renEq2+8
				5:
					renEq1=renEq1+azar(4)+3
					renEq2=renEq2+azar(4)+3
				6:
					renEq1=renEq1+8
					renEq2=renEq2+0
			Fin Segun
		3:
			Segun selec2 Hacer
				1:
					renEq1=renEq1+8
					renEq2=renEq2+0
				2:
					renEq1=renEq1+10
					renEq2=renEq2+2
				3:
					renEq1=renEq1+5
					renEq2=renEq2+5
				4:
					renEq1=renEq1+2
					renEq2=renEq2+10
				5:
					renEq1=renEq1+0
					renEq2=renEq2+8
				6:
					renEq1=renEq1+azar(4)+3
					renEq2=renEq2+azar(4)+3
			Fin Segun
		4:
			Segun selec2 Hacer
				1:
					renEq1=renEq1+azar(4)+3
					renEq2=renEq2+azar(4)+3
				2:
					renEq1=renEq1+8
					renEq2=renEq2+0
				3:
					renEq1=renEq1+10
					renEq2=renEq2+2
				4:
					renEq1=renEq1+5
					renEq2=renEq2+5
				5:
					renEq1=renEq1+2
					renEq2=renEq2+10
				6:
					renEq1=renEq1+0
					renEq2=renEq2+8
			Fin Segun
		5:
			Segun selec2 Hacer
				1:
					renEq1=renEq1+0
					renEq2=renEq2+8
				2:
					renEq1=renEq1+azar(4)+3
					renEq2=renEq2+azar(4)+3
				3:
					renEq1=renEq1+8
					renEq2=renEq2+0
				4:
					renEq1=renEq1+10
					renEq2=renEq2+2
				5:
					renEq1=renEq1+5
					renEq2=renEq2+5
				6:
					renEq1=renEq1+2
					renEq2=renEq2+10
			Fin Segun
		6:
			Segun selec2 Hacer
				1:
					renEq1=renEq1+2
					renEq2=renEq2+10
				2:
					renEq1=renEq1+0
					renEq2=renEq2+8
				3:
					renEq1=renEq1+azar(4)+3
					renEq2=renEq2+azar(4)+3
				4:
					renEq1=renEq1+8
					renEq2=renEq2+0
				5:
					renEq1=renEq1+10
					renEq2=renEq2+2
				6:
					renEq1=renEq1+5
					renEq2=renEq2+5
			Fin Segun
	Fin Segun	
FinFuncion

Funcion ocaciones (situacionesLocal Por Referencia, situacionesVisi Por Referencia, oca1,oca2)
	i Es Entero
	Repetir
		i=i+1
		situacionesLocal(i,1)=azar(90)
	Hasta Que i= oca1 
	i=0
	Repetir
		i=i+1
		situacionesVisi(i,1)=azar(90)
	Hasta Que i=oca2
FinFuncion
