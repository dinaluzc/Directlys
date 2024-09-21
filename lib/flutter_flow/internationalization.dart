import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'ls9efyl2': {
      'es': '¿Desearias registrar tu negocio en este  directorio?',
      'en': '',
    },
    'c3n7qymn': {
      'es':
          'Directly es una aplicacion que te conecta al instante  con un universo de servicio a través de un directorio especializado online.',
      'en': '',
    },
    'rmkeeq0s': {
      'es': 'Registrarme',
      'en': '',
    },
    'kczcs3it': {
      'es': 'Directlys',
      'en': '',
    },
    '7qpcmxuc': {
      'es': 'Home',
      'en': '',
    },
  },
  // Registrotelefonico
  {
    '6jyg08dy': {
      'es': 'Hello World',
      'en': '',
    },
    'syqpdgii': {
      'es': ' Únete a Directly con tu numero celular',
      'en': '',
    },
    '5jpi9nlx': {
      'es': 'Ingresa tu telefono',
      'en': '',
    },
    '6u3tcqn6': {
      'es': 'Your Phone Number...',
      'en': '',
    },
    'vad9fm7v': {
      'es': '+1 (204) 204-2056',
      'en': '',
    },
    '608a5t7y': {
      'es': 'Siguiente',
      'en': '',
    },
    'jpwxtvmf': {
      'es':
          'Al pulsar \"siguiente\". aceptas los Términos y condiciones y la Política de privacidad',
      'en': '',
    },
    'mn34908v': {
      'es': 'Directly ',
      'en': '',
    },
    'ocmqs8eh': {
      'es': 'Home',
      'en': '',
    },
  },
  // PinCode
  {
    'ijb1px0w': {
      'es': '\nIngrese el código PIN a continuación',
      'en': '',
    },
    't4l7vt0u': {
      'es': 'Confirma tu Código',
      'en': '',
    },
    'sb3epmqb': {
      'es': 'Este código ayuda a mantener su cuenta segura y protegida.',
      'en': '',
    },
    '5gml1gh7': {
      'es': 'Confirmar & Continuar',
      'en': '',
    },
    '9z5l8ttt': {
      'es': 'Home',
      'en': '',
    },
  },
  // Localizador
  {
    'b5ovxxiy': {
      'es':
          'Habilite el acceso a su ubicación actual para que la aplicacion funcione correctamente. \n\n\n\n',
      'en': '',
    },
    'ygxuux9g': {
      'es': 'Seleccionar ubicación',
      'en': '',
    },
    'okln254s': {
      'es': 'Home',
      'en': '',
    },
  },
  // PerfilPrestador1
  {
    '9vr2e0sx': {
      'es': 'Añadir una foto*',
      'en': '',
    },
    'ieozts7a': {
      'es': 'Nombre',
      'en': '',
    },
    '3o1slxas': {
      'es': 'Apellido',
      'en': '',
    },
    '4raac51a': {
      'es': 'Correo electrónico',
      'en': '',
    },
    '9xb8q162': {
      'es': 'Confirma tu correo electrónico',
      'en': '',
    },
    '4bfk0srf': {
      'es': 'Tipo de documento',
      'en': '',
    },
    'opbm8a03': {
      'es': 'Cédula de ciudadanía',
      'en': '',
    },
    '6s4frvbc': {
      'es': 'Cédula de extrangería',
      'en': '',
    },
    'ynllbclm': {
      'es': 'Número de documento',
      'en': '',
    },
    'gn2ffzwj': {
      'es': 'Enviar',
      'en': '',
    },
    'alvoh2kr': {
      'es': 'Al tocar<< Enviar>> acepto los  ',
      'en': '',
    },
    'kevfs2sl': {
      'es': 'Terminos y condiciones',
      'en': '',
    },
    's5iu6wkg': {
      'es':
          ', \n así como reconozco y acepto el procesamiento y la \ntransferencia de datos personales de acuerdo con\n la ',
      'en': '',
    },
    '0g8nnkgu': {
      'es': 'Política de privacidad',
      'en': '',
    },
    'xy37k32p': {
      'es': 'Información básica',
      'en': '',
    },
  },
  // SeleccionaRol
  {
    '4ynl0w6w': {
      'es': '¡Gracias por unirte! ¡Acceda o cree su cuenta a continuación!',
      'en': '',
    },
    '321n3pal': {
      'es': 'Selecione su rol',
      'en': '',
    },
    'nz29g0gt': {
      'es': 'Puede cambiar su modo mas tarde',
      'en': '',
    },
    'udt4zone': {
      'es': 'Prestador de servicios',
      'en': '',
    },
    'q7r1vucg': {
      'es': 'Cliente',
      'en': '',
    },
    '658ohz6x': {
      'es': 'Home',
      'en': '',
    },
  },
  // PerfilCliente
  {
    '8br02d2l': {
      'es': 'Añadir una foto*',
      'en': '',
    },
    '5dsm963k': {
      'es': 'Nombre',
      'en': '',
    },
    'khck8abt': {
      'es': 'Apellido',
      'en': '',
    },
    'sx5dlsqx': {
      'es': 'Correo electrónico',
      'en': '',
    },
    'ueqxxkt3': {
      'es': 'Fecha de nacimiento',
      'en': '',
    },
    'nf2p1n5u': {
      'es': 'Option 1',
      'en': '',
    },
    'oxnwasv7': {
      'es': 'Please select...',
      'en': '',
    },
    '1n71moms': {
      'es': 'Search for an item...',
      'en': '',
    },
    'l7tynjz8': {
      'es': 'Lugar de nacimiento',
      'en': '',
    },
    'dozw26el': {
      'es': 'Genero',
      'en': '',
    },
    '3k7ylzh3': {
      'es': 'Hombre',
      'en': '',
    },
    'waokbscw': {
      'es': 'Mujer',
      'en': '',
    },
    'aqzcra9h': {
      'es': 'Otro',
      'en': '',
    },
    'fw2ji0tu': {
      'es': 'Enviar',
      'en': '',
    },
    '20sss7js': {
      'es': 'Sign in with Google',
      'en': '',
    },
    'oyovkd4e': {
      'es': 'Al tocar<< Enviar>> acepto los  ',
      'en': '',
    },
    'uiibcmv1': {
      'es': 'Terminos y condiciones',
      'en': '',
    },
    'sqk0r5ug': {
      'es':
          ', \n así como reconozco y acepto el procesamiento y la \ntransferencia de datos personales de acuerdo con\n la ',
      'en': '',
    },
    'mt0js9p5': {
      'es': 'Política de privacidad',
      'en': '',
    },
    'lgap3owk': {
      'es': 'Crea tu perfil de cliente',
      'en': '',
    },
  },
  // PerfilPrestador2
  {
    'xst7ypdi': {
      'es': 'Andrew',
      'en': '',
    },
    'v8tuvdt3': {
      'es': 'Describe tus habilidades',
      'en': '',
    },
    'ft016aee': {
      'es':
          'Tengo amplia experiencia  en diferentes  oficios  como electricista, carpintero, jardinero, pintor, fontanero....',
      'en': '',
    },
    'vdgryfo3': {
      'es': 'Tienes redes sociales de tu emprendiemiento',
      'en': '',
    },
    'begzpvpf': {
      'es': 'Galeria de fotos',
      'en': '',
    },
    'g781g7hv': {
      'es': 'Continuar',
      'en': '',
    },
    '2roxspt3': {
      'es': 'Información básica',
      'en': '',
    },
  },
  // PersonaNat_Jurid
  {
    'jiv20rr1': {
      'es': '¿Es usted?',
      'en': '',
    },
    'nw7c6xgl': {
      'es':
          '\"Quedará habilitado para recibir notificaciones de solicitudes de servicios como profesional independiente. \"',
      'en': '',
    },
    'hjoa1ohk': {
      'es': 'Trabajador independiente',
      'en': '',
    },
    'w5zd4hq7': {
      'es':
          '\"Los datos de contacto de su compañia , estaran disponibles en el directorio telefónico, facilitando que mas clientes puedan contactactarle, usted  y recibira  notificacion, cuando el cliente solicite cotizaciòn.\"',
      'en': '',
    },
    'e99e9201': {
      'es': 'Empresa o Pyme',
      'en': '',
    },
    'ohoi8roi': {
      'es': 'Home',
      'en': '',
    },
  },
  // PerfilPrestador3
  {
    'v82dd52u': {
      'es': 'Verificacion',
      'en': '',
    },
    'q8fyv14x': {
      'es': 'Hello, ',
      'en': '',
    },
    'tv100b4k': {
      'es': 'Andrew',
      'en': '',
    },
    '4mrsh3q0': {
      'es': '         Documento de indentidad                        ',
      'en': '',
    },
    'pqp2453x': {
      'es': '          Antecedentes judiciales                             ',
      'en': '',
    },
    '2xu477o4': {
      'es': '          Estudios realizados                                  ',
      'en': '',
    },
    '6emb4i0v': {
      'es': 'Opcional',
      'en': '',
    },
    'cfh0wlua': {
      'es': '         Experiencia laboral                                   ',
      'en': '',
    },
    'it54am84': {
      'es': 'Opcional',
      'en': '',
    },
    'oru7jmqy': {
      'es': 'Seleccione los servicios que presta',
      'en': '',
    },
    '3t73tpa9': {
      'es': 'Seleccione si dipone de alguno de estos documentos:',
      'en': '',
    },
    '7569ynyz': {
      'es': 'Cuenta con Rut',
      'en': '',
    },
    'mi5fyhtj': {
      'es': 'Factura o \ndocumento equivalente',
      'en': '',
    },
    'r4wpdelr': {
      'es': 'Tarjeta profesional',
      'en': '',
    },
    'xcx70v3x': {
      'es': 'Tarjeta counduit',
      'en': '',
    },
    'tgah6nxb': {
      'es': 'Continuar',
      'en': '',
    },
  },
  // PginaInicialdelprestador
  {
    '20qbzbqq': {
      'es': 'Directly',
      'en': '',
    },
    'rt0qg8r6': {
      'es': 'Anuncios & Clasificados',
      'en': '',
    },
    '0wq6b605': {
      'es': 'Consultar  - Cotizar',
      'en': '',
    },
    'qyg0hqny': {
      'es': '¿Necesitas?',
      'en': '',
    },
    'romvip9d': {
      'es': 'Ver solicitudes activas',
      'en': '',
    },
    'j8yihwvm': {
      'es': 'Electricistas ()',
      'en': '',
    },
    'il8y6dvs': {
      'es': 'Servicio de limpieza ()',
      'en': '',
    },
    'v84x2hwp': {
      'es': 'Peluqueria()',
      'en': '',
    },
    'bfsju68q': {
      'es': 'Solicitar un servicio',
      'en': '',
    },
    '6id6iug5': {
      'es': 'Publicar anuncio',
      'en': '',
    },
    'sied1hgp': {
      'es': 'Account Options',
      'en': '',
    },
    'nh2i67po': {
      'es': 'Randy Peterson',
      'en': '',
    },
    '85egns3i': {
      'es': 'randy.p@domainname.com',
      'en': '',
    },
    'scr3an07': {
      'es': 'My Account',
      'en': '',
    },
    'xkkgy9ey': {
      'es': 'Settings',
      'en': '',
    },
    '5u74m1yl': {
      'es': 'Billing Details',
      'en': '',
    },
    'vk9kcjjn': {
      'es': 'Log out',
      'en': '',
    },
    'njzxisuz': {
      'es': 'Home',
      'en': '',
    },
  },
  // SolicitarServicio
  {
    'o802fj60': {
      'es': '¿Que servicio estas buscando?',
      'en': '',
    },
    'm77d5f8r': {
      'es': 'Buscar un servicio',
      'en': '',
    },
    'nypugkvf': {
      'es': 'Remodelacion \nconstrucción',
      'en': '',
    },
    '6v6bim99': {
      'es': 'Reparación  \ntecnica',
      'en': '',
    },
    'rtbegajx': {
      'es': 'Mecanico\n',
      'en': '',
    },
    'bq0u5hkf': {
      'es': 'Servicio \ndomestico',
      'en': '',
    },
    'm41ershk': {
      'es': 'Cuidado de \nmascotas',
      'en': '',
    },
    'dzxiecnz': {
      'es': 'Cuidado & \nBelleza',
      'en': '',
    },
    'ejihkpk2': {
      'es': 'Clases \nparticulares',
      'en': '',
    },
    'xc3xq194': {
      'es': 'Asesorias \nespeciadas',
      'en': '',
    },
    'zp2l6qt8': {
      'es': 'Eventos y \nentretenimiento',
      'en': '',
    },
    'l4dyws26': {
      'es': 'Salud y\n bienestar',
      'en': '',
    },
    '4xb5e99a': {
      'es': 'Diseño y\n costura',
      'en': '',
    },
    'k85muo3j': {
      'es': 'ensayo, inspección y \ncertificación de productos ',
      'en': '',
    },
    'tmr501e1': {
      'es': 'Ebanista y \ncarpintero',
      'en': '',
    },
    'wzgri90i': {
      'es': 'Grupos y orquestas \nmusicales ',
      'en': '',
    },
    '6k1lruzz': {
      'es': 'Turismo, \nacompañamiento \nal viajero',
      'en': '',
    },
    'h5xi9s84': {
      'es': 'Ayudantes en\n gerneal                       \n',
      'en': '',
    },
    '21bc0ar0': {
      'es': 'Cocineros y \nmeseros             \n',
      'en': '',
    },
    '0r6tepah': {
      'es': 'Diseño y\n Multimedia\n',
      'en': '',
    },
    'sdn82t36': {
      'es': 'Arreglos\n locativos\n',
      'en': '',
    },
    'xv68dlyg': {
      'es': 'Alquiler de maquinaria y equipos',
      'en': '',
    },
    'rpc8m6rd': {
      'es': 'Planta electrica, herramientas montacargas',
      'en': '',
    },
    'mh0z4yy8': {
      'es': 'Transporte de  acarreo',
      'en': '',
    },
    'ffqsli7i': {
      'es': 'Motocaro, camiones de trasteo',
      'en': '',
    },
    'knhneu9v': {
      'es': 'Directly',
      'en': '',
    },
    'tx8pis27': {
      'es': 'Home',
      'en': '',
    },
  },
  // PerfilPrestadorInf
  {
    'giq2xh7l': {
      'es': 'Hello, ',
      'en': '',
    },
    'l71jng9i': {
      'es': 'Andrew',
      'en': '',
    },
    '7g8vyydi': {
      'es': 'Fecha de nacimiento',
      'en': '',
    },
    '7hh2ixhe': {
      'es': 'Option 1',
      'en': '',
    },
    'xrl5a282': {
      'es': 'Please select...',
      'en': '',
    },
    'ssgzzj2i': {
      'es': 'Search for an item...',
      'en': '',
    },
    'z39sqmz9': {
      'es': 'Lugar de nacimiento',
      'en': '',
    },
    'mvqlrxeq': {
      'es': 'Genero',
      'en': '',
    },
    'pa1a3uai': {
      'es': 'Hombre',
      'en': '',
    },
    '27or1g1p': {
      'es': 'Mujer',
      'en': '',
    },
    'uacealct': {
      'es': 'Otro',
      'en': '',
    },
    'r3vxmoy0': {
      'es': 'Dirección de residencia',
      'en': '',
    },
    'srv9bypr': {
      'es': '¿Tienes permiso de trabajo en Colombia?',
      'en': '',
    },
    'n501bqiv': {
      'es': 'si',
      'en': '',
    },
    'avoonypl': {
      'es': 'No',
      'en': '',
    },
    'r333kmo9': {
      'es': '¿Tienes alguna discapacidad?',
      'en': '',
    },
    'tdqizg5l': {
      'es': 'Si',
      'en': '',
    },
    'kpjeanba': {
      'es': 'No',
      'en': '',
    },
    'fknbgo24': {
      'es': 'Continuar',
      'en': '',
    },
    'xmqykkgq': {
      'es': 'Información básica',
      'en': '',
    },
  },
  // PerfilPrestador
  {
    'q6ogkbxx': {
      'es': 'Mi perfil',
      'en': '',
    },
    '194yiv73': {
      'es': 'Andrew',
      'en': '',
    },
    '47guuvsy': {
      'es':
          'Tengo amplia experiencia  en estetica y belleza, manicure, pedicure....\n',
      'en': '',
    },
    'pupqwfdg': {
      'es': 'True Beauty (@true_beautyworld)',
      'en': '',
    },
    'or53i323': {
      'es': 'True Beauty (@true_beautyworld)',
      'en': '',
    },
    'z0bpikiz': {
      'es': 'Estatus',
      'en': '',
    },
    '3v1rhtw5': {
      'es': 'Activo',
      'en': '',
    },
    '2sq1x2z5': {
      'es': 'Inactivo',
      'en': '',
    },
    '1oi1e3yu': {
      'es': 'En revision',
      'en': '',
    },
    'fpbkbb0k': {
      'es': 'Finalizar',
      'en': '',
    },
  },
  // Directoriotelefonico
  {
    't9e3vvcg': {
      'es': 'Search all articles...',
      'en': '',
    },
    'o8mtqmew': {
      'es': 'A',
      'en': '',
    },
    'l0yyicjt': {
      'es': 'Animador de fiestas',
      'en': '',
    },
    '3cfhwjgs': {
      'es': 'A',
      'en': '',
    },
    'dmkwof66': {
      'es': 'Andamiero - Andamios',
      'en': '',
    },
    'w7ybwvn4': {
      'es': 'A',
      'en': '',
    },
    'uurhona1': {
      'es': 'Artistas',
      'en': '',
    },
    'ef1k6gvr': {
      'es': 'A',
      'en': '',
    },
    'nqw87oq7': {
      'es': 'Acueductos',
      'en': '',
    },
    'nvv4hdwg': {
      'es': 'A',
      'en': '',
    },
    'pncb1qxn': {
      'es': 'Ambulancias',
      'en': '',
    },
    'e0wu3yuv': {
      'es': 'A',
      'en': '',
    },
    'ztlrlfpi': {
      'es': 'Auditoras consultoras',
      'en': '',
    },
    '18xw8kc4': {
      'es': 'A',
      'en': '',
    },
    'hj8tb5pi': {
      'es': 'Agencias de seguro',
      'en': '',
    },
    '610im5k5': {
      'es': 'A',
      'en': '',
    },
    'tw4dx5fu': {
      'es': 'Agencias de Aduanas',
      'en': '',
    },
    'tuf4f1t3': {
      'es': 'A',
      'en': '',
    },
    'v2ngtukq': {
      'es': 'Aereopuertos',
      'en': '',
    },
    'hb3a7qxu': {
      'es': 'A',
      'en': '',
    },
    '4pi1xlsm': {
      'es': 'Alcaldia',
      'en': '',
    },
    'w5zlv2m7': {
      'es': 'A',
      'en': '',
    },
    'k5llj3d5': {
      'es': 'Almacenes',
      'en': '',
    },
    'nyge6bbn': {
      'es': 'F',
      'en': '',
    },
    '7dz3ha2m': {
      'es': 'Ferreterias',
      'en': '',
    },
    'v7efchmf': {
      'es': 'F',
      'en': '',
    },
    'tf49o48v': {
      'es': 'Financieras',
      'en': '',
    },
    '79as5ec2': {
      'es': 'P',
      'en': '',
    },
    'dn7426e0': {
      'es': 'Peluqueria - peluquero -peinador',
      'en': '',
    },
    'm948pmqe': {
      'es': 'A',
      'en': '',
    },
    'r8fv62fb': {
      'es': 'List Item',
      'en': '',
    },
    '1sa8sv1l': {
      'es': 'A',
      'en': '',
    },
    '252csla8': {
      'es': 'List Item',
      'en': '',
    },
    'quuqg6ah': {
      'es': 'A',
      'en': '',
    },
    'fq1tp9uw': {
      'es': 'List Item',
      'en': '',
    },
    'e1to1fye': {
      'es': 'Directorio Tefonico',
      'en': '',
    },
    'bwq5wjtw': {
      'es': 'Home',
      'en': '',
    },
  },
  // Catalogodeservicios
  {
    '72lv9n4l': {
      'es': 'Selecione los servicios que presta',
      'en': '',
    },
    'jwi2ldqa': {
      'es': 'Servicios del hogar',
      'en': '',
    },
    'wnqmeymz': {
      'es': 'Limpieza del hogar',
      'en': '',
    },
    '258mgbgz': {
      'es': 'Cuidado de niños',
      'en': '',
    },
    'kdbo9jft': {
      'es': 'Cuidado de adultos mayores',
      'en': '',
    },
    '0r7yuici': {
      'es': 'Lavandería y planchado',
      'en': '',
    },
    '8vzntdpr': {
      'es': 'Cocina a domicilio',
      'en': '',
    },
    'oq4340yi': {
      'es': 'Jardinería',
      'en': '',
    },
    'bmqrqzyg': {
      'es': 'Remodelación y Construcción:',
      'en': '',
    },
    'sq6bfcvg': {
      'es': 'Remodelación de cocinas',
      'en': '',
    },
    '07qven5s': {
      'es': 'Renovación de baños',
      'en': '',
    },
    'yhmu9ueo': {
      'es': 'Construcción de casas',
      'en': '',
    },
    'i33fpy33': {
      'es': 'Instalación de pisos',
      'en': '',
    },
    '3d1lpt0j': {
      'es': 'Electricidad y fontanería',
      'en': '',
    },
    '2ecojrzj': {
      'es': 'Diseño de interiores',
      'en': '',
    },
    'oy7l74la': {
      'es': 'Armador de Andamios',
      'en': '',
    },
    '6809ahsf': {
      'es': 'Servicio Técnico:',
      'en': '',
    },
    'itwb6uq3': {
      'es': 'Reparación de electrodomésticos',
      'en': '',
    },
    '04az2nt6': {
      'es': 'Mantenimiento de computadoras',
      'en': '',
    },
    'gngbybcz': {
      'es': 'Servicio de fontanería',
      'en': '',
    },
    '2fdo221h': {
      'es': 'Servicio de electricidad',
      'en': '',
    },
    'gq1b6y17': {
      'es': 'Reparación de vehículos',
      'en': '',
    },
    'hhzjh5bk': {
      'es': 'Sector Turismo:',
      'en': '',
    },
    '9ljsh1yr': {
      'es': 'Acompañamiento al viajero',
      'en': '',
    },
    'atze0mhq': {
      'es': 'Guía turista',
      'en': '',
    },
    'wb8ymmik': {
      'es': 'Traductor',
      'en': '',
    },
    'h9miv24p': {
      'es': 'List Item',
      'en': '',
    },
    'gmxfosf1': {
      'es': 'List Item',
      'en': '',
    },
    'cseh2ssk': {
      'es': 'Home',
      'en': '',
    },
  },
  // PerfilPeluqueraMostradoacliente
  {
    '4g02tui5': {
      'es': 'Andrew',
      'en': '',
    },
    '0eul3fei': {
      'es':
          'Tengo amplia experiencia  en estetica y belleza, manicure, pedicure....\n',
      'en': '',
    },
    'ablgim3g': {
      'es': 'True Beauty (@true_beautyworld)',
      'en': '',
    },
    'gnlbg846': {
      'es': 'True Beauty (@true_beautyworld)',
      'en': '',
    },
    'sbuozab2': {
      'es': 'Informacion adicional ',
      'en': '',
    },
    'ztrblf4h': {
      'es': 'Ciudadania: Venezolana',
      'en': '',
    },
    'aczefve6': {
      'es': 'Genero: Femenino',
      'en': '',
    },
    'b5prgt3c': {
      'es': 'Discapacidad: Niguna',
      'en': '',
    },
    'zn50qnig': {
      'es': 'Cuenta con:',
      'en': '',
    },
    'fq2ch7p4': {
      'es': 'Rut',
      'en': '',
    },
    'zbytwd9w': {
      'es': 'Factura electronica',
      'en': '',
    },
    'jzu3mb7a': {
      'es': 'Permiso para trabajar en Pais',
      'en': '',
    },
    'uksc955x': {
      'es': 'Contactar',
      'en': '',
    },
    '0xx15hrm': {
      'es': 'Cuidado y Belleza',
      'en': '',
    },
  },
  // Solicitarservicios
  {
    't6zzbc0l': {
      'es': 'Directly',
      'en': '',
    },
    'jp7mrkoc': {
      'es': 'Buscando un prestador',
      'en': '',
    },
    'ad4xksbj': {
      'es': 'Describa el servicio que necesitas',
      'en': '',
    },
    'vlr4zwu7': {
      'es': 'Solicito servicio arreglo de cabello....',
      'en': '',
    },
    '2zarlwlc': {
      'es': 'Fecha y hora que necesitas el servicio',
      'en': '',
    },
    '47iu9ds6': {
      'es': 'Ofrezca su tarifa',
      'en': '',
    },
    '5j67vmcp': {
      'es': '\$',
      'en': '',
    },
    'edm9df2t': {
      'es': 'Requiere cuenta de cobro o factura ',
      'en': '',
    },
    '15wj4vu8': {
      'es': 'Buscando prestadores de servicio disponibles',
      'en': '',
    },
    '09qay8pk': {
      'es': 'Account Options',
      'en': '',
    },
    '48p8mclm': {
      'es': 'Randy Peterson',
      'en': '',
    },
    'w0zgjqsq': {
      'es': 'randy.p@domainname.com',
      'en': '',
    },
    '41ay0tsy': {
      'es': 'My Account',
      'en': '',
    },
    '5t7lk8mf': {
      'es': 'Settings',
      'en': '',
    },
    'zf00pe2z': {
      'es': 'Billing Details',
      'en': '',
    },
    'n86mkqke': {
      'es': 'Log out',
      'en': '',
    },
    '28ymfz2e': {
      'es': 'Home',
      'en': '',
    },
  },
  // NumerostelefonicosPeluqueria
  {
    'cy5h8jet': {
      'es': 'p',
      'en': '',
    },
    '4af1827d': {
      'es': 'Search all articles...',
      'en': '',
    },
    '38abob97': {
      'es': 'Solcitar cotización',
      'en': '',
    },
    'nx5ldek4': {
      'es': 'Peluquerias - peluquero-peinador-',
      'en': '',
    },
    'fd9irymq': {
      'es': 'Peluqueria la Mejor',
      'en': '',
    },
    'kv2ikv9j': {
      'es': 'Barrio la consolata..',
      'en': '',
    },
    'bv0y9vd2': {
      'es': '24',
      'en': '',
    },
    '64ob33hr': {
      'es': 'Peluqueria Canina',
      'en': '',
    },
    'srwi1evn': {
      'es': 'Centro comercial san Fernando',
      'en': '',
    },
    'g8aa0bp7': {
      'es': '24',
      'en': '',
    },
    'tv1ak1gc': {
      'es': 'Barberia los Angeles',
      'en': '',
    },
    '211o19se': {
      'es': 'Bocagrande Avenida',
      'en': '',
    },
    'j95kbboo': {
      'es': '24',
      'en': '',
    },
    'ra3mdqvt': {
      'es': 'Brenda ',
      'en': '',
    },
    'ki4ak2su': {
      'es': 'Ceballos Calle principal',
      'en': '',
    },
    'azfn33px': {
      'es': '24',
      'en': '',
    },
    'tut0kri2': {
      'es': 'Home',
      'en': '',
    },
  },
  // SolicitarservicioCopy
  {
    'tzitgq6x': {
      'es': 'Directly',
      'en': '',
    },
    '0689zh20': {
      'es': 'Cancelar el servicio',
      'en': '',
    },
    'lighu538': {
      'es': 'Buscando prestadores de servicio disponibles',
      'en': '',
    },
    'am33l7t6': {
      'es': 'Valor  ofrecido',
      'en': '',
    },
    'hyck2leh': {
      'es': 'Negociable',
      'en': '',
    },
    'bc4o0gsy': {
      'es': 'Pelueria X',
      'en': '',
    },
    'cxheexyy': {
      'es': '                  \n\n',
      'en': '',
    },
    'sc7v1361': {
      'es': 'Lis',
      'en': '',
    },
    '8s8bjlnk': {
      'es': 'Pelueria X',
      'en': '',
    },
    '3v8u5r8z': {
      'es': 'Andrew',
      'en': '',
    },
    'tyi5a84e': {
      'es': '\$ 100.000',
      'en': '',
    },
    'hvej789j': {
      'es': 'Servicio que solicitas:',
      'en': '',
    },
    '6y50relj': {
      'es': '       Arreglo de cabello, manos y uñas \n               ',
      'en': '',
    },
    '8e82hs9f': {
      'es': 'Fecha y hora',
      'en': '',
    },
    'kha19ssm': {
      'es': 'Lunes 23 octubre 8:00am',
      'en': '',
    },
    '43k2w3w9': {
      'es': 'Account Options',
      'en': '',
    },
    'wbpkj0ac': {
      'es': 'Randy Peterson',
      'en': '',
    },
    'om1ni877': {
      'es': 'randy.p@domainname.com',
      'en': '',
    },
    'swpbx66h': {
      'es': 'My Account',
      'en': '',
    },
    'qe3abu6d': {
      'es': 'Settings',
      'en': '',
    },
    '5pih795i': {
      'es': 'Billing Details',
      'en': '',
    },
    'uwwybouj': {
      'es': 'Log out',
      'en': '',
    },
    'tf03cvts': {
      'es': 'Home',
      'en': '',
    },
  },
  // Publicaranuncio
  {
    'sgelccne': {
      'es': 'Directly',
      'en': '',
    },
    'jpio4rzf': {
      'es': 'Publicar un anuncio',
      'en': '',
    },
    't9mjx6rr': {
      'es':
          'Caga una imagen con la informacion detallada del anuncio que deseas pubicar, * ofertas,* aniversarios, *promociones, *vacantes de empleo, *infomacion, *eventos, * servicio social',
      'en': '',
    },
    '3xlmto20': {
      'es': 'Tu anuncio estara publicado, durante una semana,  ',
      'en': '',
    },
    'rv13z0fq': {
      'es': 'Account Options',
      'en': '',
    },
    'exjzo6qq': {
      'es': 'Randy Peterson',
      'en': '',
    },
    'd96tbf8e': {
      'es': 'randy.p@domainname.com',
      'en': '',
    },
    'fiqo6rc8': {
      'es': 'My Account',
      'en': '',
    },
    '4jtod7b9': {
      'es': 'Settings',
      'en': '',
    },
    '6iqizjuv': {
      'es': 'Billing Details',
      'en': '',
    },
    'ad13wzy4': {
      'es': 'Log out',
      'en': '',
    },
    'kdst9r6z': {
      'es': 'Home',
      'en': '',
    },
  },
  // PerfilEmpresa
  {
    'sogtg9i6': {
      'es': 'Añadir logo compañia',
      'en': '',
    },
    'ageiz4s5': {
      'es': 'Razon Social',
      'en': '',
    },
    'ylrggitz': {
      'es': 'Direccion',
      'en': '',
    },
    'jfl8kxdl': {
      'es': 'Correo electrónico',
      'en': '',
    },
    '5ihxbvnt': {
      'es': 'Oobjeto social',
      'en': '',
    },
    '5pglc327': {
      'es': 'Catalogo de servicios',
      'en': '',
    },
    'qh4ufe88': {
      'es': 'Redes sociales',
      'en': '',
    },
    '4rwm8dh4': {
      'es': 'www.http//',
      'en': '',
    },
    'wz2oqbfs': {
      'es': 'Cuenta con certificaciones en:',
      'en': '',
    },
    'lien9up9': {
      'es': 'Enviar',
      'en': '',
    },
    '9ykf2ply': {
      'es': 'Al tocar<< Enviar>> acepto los  ',
      'en': '',
    },
    'bstq831x': {
      'es': 'Terminos y condiciones',
      'en': '',
    },
    'zv9yqxe6': {
      'es':
          ', \n así como reconozco y acepto el procesamiento y la \ntransferencia de datos personales de acuerdo con\n la ',
      'en': '',
    },
    'favrn5nn': {
      'es': 'Política de privacidad',
      'en': '',
    },
    '9nzy5fu8': {
      'es': 'Crea tu perfil Empresarial',
      'en': '',
    },
  },
  // PginaInicial
  {
    'wyj0slbr': {
      'es': 'Directly',
      'en': '',
    },
    'tubm0iv2': {
      'es': 'Anuncios & Clasificados',
      'en': '',
    },
    '38jxn53o': {
      'es': 'Guía teléfonica -  Solicitar Cotización',
      'en': '',
    },
    'p19zi3gn': {
      'es': '¿Que necesitas?',
      'en': '',
    },
    'ej26bvm1': {
      'es': 'Contactar un prestador de servicios',
      'en': '',
    },
    'e33yc4tb': {
      'es': 'Publicar anuncio',
      'en': '',
    },
    '1n09m6fv': {
      'es': 'Account Options',
      'en': '',
    },
    'ia1twofb': {
      'es': 'Randy Peterson',
      'en': '',
    },
    '6gavshf9': {
      'es': 'randy.p@domainname.com',
      'en': '',
    },
    '6cmeokdj': {
      'es': 'My Account',
      'en': '',
    },
    'ay92jjy6': {
      'es': 'Settings',
      'en': '',
    },
    'x1t7egfk': {
      'es': 'Billing Details',
      'en': '',
    },
    'fgw79vrw': {
      'es': 'Log out',
      'en': '',
    },
    '217fngb3': {
      'es': 'Home',
      'en': '',
    },
  },
  // PginaInicialdelprestadorCopy
  {
    'x91ga8n4': {
      'es': 'Directly',
      'en': '',
    },
    'okxcrpmk': {
      'es': 'Servicios solicitados',
      'en': '',
    },
    'ostdfb51': {
      'es': 'Electricistas ()',
      'en': '',
    },
    '29iavyry': {
      'es': 'Servicio de limpieza ()',
      'en': '',
    },
    'bz2fwac8': {
      'es': 'Share',
      'en': '',
    },
    'qfommvfg': {
      'es': 'Share',
      'en': '',
    },
    'wdnr03aj': {
      'es': 'Peluqueria()',
      'en': '',
    },
    'f7ongs1j': {
      'es': 'Account Options',
      'en': '',
    },
    'iem8sfpu': {
      'es': 'Randy Peterson',
      'en': '',
    },
    'fzdx6czr': {
      'es': 'randy.p@domainname.com',
      'en': '',
    },
    'njyc0ydb': {
      'es': 'My Account',
      'en': '',
    },
    'lii0yn7x': {
      'es': 'Settings',
      'en': '',
    },
    '1r4d16kr': {
      'es': 'Billing Details',
      'en': '',
    },
    'ph2zgb70': {
      'es': 'Log out',
      'en': '',
    },
    'b61ph5lr': {
      'es': 'Home',
      'en': '',
    },
  },
  // SolicitarCotizacion
  {
    'o4cwm5zc': {
      'es': 'Describe aquí lo deseas cotizar',
      'en': '',
    },
    '5mht4n1i': {
      'es': 'Fecha en que lo(a) requiere:',
      'en': '',
    },
    'ann3unix': {
      'es': 'Desea adjuntar listado',
      'en': '',
    },
    'ffdlxg20': {
      'es': 'Deseas subir alguna foto que detalle lo\n que buscas?',
      'en': '',
    },
    'v89fu95k': {
      'es': 'Deseas recibir su cotizacion via:',
      'en': '',
    },
    'd9dolj4u': {
      'es': 'Label here...',
      'en': '',
    },
    'uo1g1n7m': {
      'es': 'Label here...',
      'en': '',
    },
    '4wxmi3ui': {
      'es': 'Soclicitar cotizacion',
      'en': '',
    },
    '2bouhy83': {
      'es': 'Solicitud de cotización',
      'en': '',
    },
    'r7po65oh': {
      'es': 'Home',
      'en': '',
    },
  },
  // NumerostelefonicosFerrererias
  {
    'zzkl0ccl': {
      'es': 'Search all articles...',
      'en': '',
    },
    '28vw4rkk': {
      'es':
          'Seleccione las entidades a las que se le enviara su solicitud de cotización luego de click en el boton solicitar cotización ',
      'en': '',
    },
    '4wv22ipp': {
      'es': 'Solcitar cotización',
      'en': '',
    },
    'xhke4s8l': {
      'es':
          'Carrera al Bosque, Frente a purina, Dg. 22 #1 · 56628660\nCerrado ⋅ Abre a las 8 a. m. del lun\nCompras en tienda·\nEntrega a domicilio',
      'en': '',
    },
    'j3s56x24': {
      'es': '24',
      'en': '',
    },
    'i2rroipv': {
      'es':
          '75 Diagonal 22 #51, Dg. 22 #51 · 56437225\nCerrado ⋅ Abre a las 7:30 a. m. del lun\nCompras en tienda·\nRetiro en tienda· Entrega a domicilio',
      'en': '',
    },
    'lh6u3b47': {
      'es': '24',
      'en': '',
    },
    '6k8s7c72': {
      'es':
          'Tv 45A #49 · 56454783\nCerrado ⋅ Abre a las 7:30 a. m. del lun\nCompras en tienda·\nEntrega a domicilio',
      'en': '',
    },
    'm4ruvq4u': {
      'es': '24',
      'en': '',
    },
    '1yrq62dd': {
      'es': 'Ferreterias',
      'en': '',
    },
    'ayhj4goi': {
      'es': 'Home',
      'en': '',
    },
  },
  // ServicioDomstico
  {
    'y7kzweib': {
      'es': 'Servicio Doméstico',
      'en': '',
    },
    'jff8rg6g': {
      'es': 'Limpieza del hogar',
      'en': '',
    },
    'khau26yg': {
      'es': 'Cuidado de niños',
      'en': '',
    },
    'l7r5r5aa': {
      'es': 'Cuidado de adultos mayores',
      'en': '',
    },
    '4rkefklu': {
      'es': 'Lavandería y planchado',
      'en': '',
    },
    'wx82x0pu': {
      'es': 'Cocina a domicilio',
      'en': '',
    },
    '9slus489': {
      'es': 'Asistente de compras del hogar',
      'en': '',
    },
    '327k6v2r': {
      'es': 'Gestor pago o dilegancias del hogar',
      'en': '',
    },
    'ggao37d1': {
      'es': 'limpiadores de muebles',
      'en': '',
    },
    'kgw3g7mz': {
      'es': 'Tapiceria',
      'en': '',
    },
    'j7uz117z': {
      'es': 'Fumigación',
      'en': '',
    },
    'ereewve3': {
      'es': 'Jardinería',
      'en': '',
    },
    't5093ro7': {
      'es': 'Siguiente',
      'en': '',
    },
    'tcru5ach': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'sk2yqphd': {
      'es': 'Home',
      'en': '',
    },
  },
  // RemodelacinyConstruccin
  {
    'z2oz28m1': {
      'es': 'Remodelación y Construcción:',
      'en': '',
    },
    '0csuc08j': {
      'es': 'Remodelación de cocinas',
      'en': '',
    },
    '65kcligi': {
      'es': 'Renovación de baños',
      'en': '',
    },
    'h5dzq7ip': {
      'es': 'Construcción de casas',
      'en': '',
    },
    'mqwbb3ft': {
      'es': 'Instalación de pisos',
      'en': '',
    },
    '4o2p0sjz': {
      'es': 'Electricidad y fontanería',
      'en': '',
    },
    'jlv3n58o': {
      'es': 'Diseño de interiores',
      'en': '',
    },
    'aiygs8ks': {
      'es': 'Armador de Andamios',
      'en': '',
    },
    '3i3pgol5': {
      'es': 'Alquiler de Andamios',
      'en': '',
    },
    '2prlolon': {
      'es': 'Siguiente',
      'en': '',
    },
    'av7z7i9l': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'kkwu2inu': {
      'es': 'Home',
      'en': '',
    },
  },
  // ServicioTcnico
  {
    'yjzfch1l': {
      'es': 'Servicio Técnico:',
      'en': '',
    },
    '36c3sfw5': {
      'es': 'Reparación de electrodomésticos',
      'en': '',
    },
    '1q9jhb9g': {
      'es': 'Reparación de equipos electrónicos',
      'en': '',
    },
    'axh71i6t': {
      'es': 'Mantenimiento de computadoras',
      'en': '',
    },
    '0r01ybo6': {
      'es': 'Servicio de fontanería',
      'en': '',
    },
    '4wcg8fei': {
      'es': 'Servicio de electricidad',
      'en': '',
    },
    '1slva9aa': {
      'es': 'Reparación de vehículos',
      'en': '',
    },
    'lqqi5u3x': {
      'es': 'Refrigeracion',
      'en': '',
    },
    'dhbin86i': {
      'es': ' Reparacion de lavadoras',
      'en': '',
    },
    'zrrr2bsm': {
      'es': 'Reparaciòn herramientas electricas',
      'en': '',
    },
    'rfgw7vjh': {
      'es': 'Técnico de dispositivos móviles',
      'en': '',
    },
    'knt18cdm': {
      'es': 'Siguiente',
      'en': '',
    },
    'tedbrskw': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    '7slnlock': {
      'es': 'Home',
      'en': '',
    },
  },
  // Mecnica
  {
    'jbv2alow': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'jrqzrpmm': {
      'es': 'Mecánica:',
      'en': '',
    },
    '5bplzr79': {
      'es': 'Reparación de automóviles',
      'en': '',
    },
    'fztvytkx': {
      'es': 'Reparación de vehiculos electricos',
      'en': '',
    },
    'xw0om0px': {
      'es': 'Reparación de Motocicletas',
      'en': '',
    },
    '5o4klkqp': {
      'es': 'Reparacion de maquinaria y equipos pesados',
      'en': '',
    },
    'nrj1dkc9': {
      'es': 'Mantenimiento de vehículos electricos',
      'en': '',
    },
    '7i9eh5yl': {
      'es': 'Cambio de aceite',
      'en': '',
    },
    'e5ohksgl': {
      'es': 'Cambio de neumáticos',
      'en': '',
    },
    'domw5tb5': {
      'es': 'Mecanico de embarcaciones',
      'en': '',
    },
    'xhl0hxl5': {
      'es': 'Mantenimiento de bicicletas ',
      'en': '',
    },
    'p5zi5xdn': {
      'es': 'Reparación de carrocería',
      'en': '',
    },
    'sodezfw6': {
      'es': 'Servicio de grúa',
      'en': '',
    },
    'sho571dw': {
      'es': 'Siguiente',
      'en': '',
    },
    'kjdjwqn1': {
      'es': 'Home',
      'en': '',
    },
  },
  // ServicioparaMascotas
  {
    'bn1ucq9c': {
      'es': 'Servicio para Mascotas:',
      'en': '',
    },
    'kchevvue': {
      'es': 'Paseo de perros',
      'en': '',
    },
    '7q9nksvw': {
      'es': 'Cuidado de mascotas en ausencia de los dueños',
      'en': '',
    },
    '5u6vdlbt': {
      'es': 'Entrenamiento de perros',
      'en': '',
    },
    'q6pznhhf': {
      'es': 'Grooming para mascotas',
      'en': '',
    },
    '0kxg9mc3': {
      'es': 'Hospedaje de mascotas',
      'en': '',
    },
    '51m88dsm': {
      'es': 'Alimentación y cuidado de mascotas',
      'en': '',
    },
    'dr84ymw9': {
      'es': 'Veterinario en casa',
      'en': '',
    },
    '8uydqk17': {
      'es': 'List Item',
      'en': '',
    },
    'wm1cvw7y': {
      'es': 'Siguiente',
      'en': '',
    },
    'p63f0a8t': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    '7d89hcwz': {
      'es': 'Home',
      'en': '',
    },
  },
  // CuidadoBelleza
  {
    'o13kjgc3': {
      'es': 'Cuidado y Belleza',
      'en': '',
    },
    '76171kt5': {
      'es': 'Maquillaje',
      'en': '',
    },
    '5kwa0rvs': {
      'es': 'Peluquería y estilismo',
      'en': '',
    },
    'hfic0our': {
      'es': 'Manicura y pedicura',
      'en': '',
    },
    'ex0fimkt': {
      'es': 'Peinados',
      'en': '',
    },
    '8jz868kt': {
      'es': 'Tratamientos faciales',
      'en': '',
    },
    '2sx0r97i': {
      'es': 'Masajes terapéuticos',
      'en': '',
    },
    'je1jtfta': {
      'es': 'Depilacion',
      'en': '',
    },
    'j4a2cjcp': {
      'es': 'Asesoría en imagen personal ',
      'en': '',
    },
    'a33kwvaj': {
      'es': 'Siguiente',
      'en': '',
    },
    'zy3qup1b': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    '075fikna': {
      'es': 'Home',
      'en': '',
    },
  },
  // ClasesParticulares
  {
    '2ay4ht73': {
      'es': 'Clases Particulares:',
      'en': '',
    },
    '5zrcj4u1': {
      'es': 'Clases de idiomas',
      'en': '',
    },
    '4ovggkdx': {
      'es': 'Clases de música',
      'en': '',
    },
    'h9rbw4hn': {
      'es': 'Clases de baile',
      'en': '',
    },
    '9aen8hhr': {
      'es': 'Tutoría académica',
      'en': '',
    },
    'nocxmp5i': {
      'es': 'Entrenamiento físico personalizado',
      'en': '',
    },
    'u34yuog8': {
      'es': 'Clases de cocina',
      'en': '',
    },
    'jv0waft0': {
      'es': 'Psicopedagogia',
      'en': '',
    },
    'fyyp507v': {
      'es': 'List Item',
      'en': '',
    },
    's1tk12mw': {
      'es': 'Siguiente',
      'en': '',
    },
    '6a13f261': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'doe3v3j9': {
      'es': 'Home',
      'en': '',
    },
  },
  // AsesorasEspecializadas
  {
    'i0kaad94': {
      'es': 'Asesorías Especializadas:',
      'en': '',
    },
    'ulpx181h': {
      'es': 'Asesoría financiera',
      'en': '',
    },
    '4mg6zqsb': {
      'es': 'Abogados y servicios jurídicos',
      'en': '',
    },
    'euca35yj': {
      'es': 'Asesoría en marketing',
      'en': '',
    },
    's2sod4xu': {
      'es': 'Asesoría en recursos humanos',
      'en': '',
    },
    '4i32a2so': {
      'es': 'Asesoría en impuestos',
      'en': '',
    },
    'd7vzs273': {
      'es': 'Consultoría empresarial',
      'en': '',
    },
    'bfjuy1jf': {
      'es': 'Salud Ocupacional',
      'en': '',
    },
    '926ugbwv': {
      'es': 'Aseguramiento de Calidad y Control de Calidad QAQC',
      'en': '',
    },
    'kl2ji8o0': {
      'es': 'Siguiente',
      'en': '',
    },
    'unw8eemb': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'c4jrjxhw': {
      'es': 'Home',
      'en': '',
    },
  },
  // ServiciosdeEventosyEntretenimiento
  {
    'kiu7589c': {
      'es': 'Servicios de Eventos y Entretenimiento:',
      'en': '',
    },
    '9akh7bj3': {
      'es': 'Planificación de bodas',
      'en': '',
    },
    'e6d5i2rr': {
      'es': 'Wedding Planner',
      'en': '',
    },
    'kpv2x7nx': {
      'es': 'Coordinación de conferencias',
      'en': '',
    },
    '92v7za3d': {
      'es': 'Organización de eventos corporativos',
      'en': '',
    },
    'txhb6v25': {
      'es': 'Gestión de eventos deportivos',
      'en': '',
    },
    '570ubf2b': {
      'es': 'Catering para reuniones y celebraciones',
      'en': '',
    },
    'n6pwq4jj': {
      'es': 'Decoradores',
      'en': '',
    },
    'cl7v7s0g': {
      'es': 'Animadores y Recreacionistas',
      'en': '',
    },
    'nb2qtvg5': {
      'es': 'Comediantes',
      'en': '',
    },
    'rbzohh50': {
      'es': 'Refrigerios empresariales',
      'en': '',
    },
    'vqrhxttr': {
      'es': 'Estaciòn de café',
      'en': '',
    },
    '8m4ypj93': {
      'es': 'Alquiler de sonido profesional',
      'en': '',
    },
    'sv5lgy2z': {
      'es': 'Alquiler pista de baile ',
      'en': '',
    },
    'qqhadrby': {
      'es': 'Fotógrafo profesional',
      'en': '',
    },
    '5ejovv4v': {
      'es': ' Plataforma 360 pro',
      'en': '',
    },
    'mx8ke9d6': {
      'es': 'Siguiente',
      'en': '',
    },
    'vzj7311e': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'u0hij6ji': {
      'es': 'Home',
      'en': '',
    },
  },
  // CocinerosyMeseros
  {
    '53biwqgq': {
      'es': 'Cocineros y Meseros:',
      'en': '',
    },
    'y6yiwzxv': {
      'es': 'Catering para reuniones y celebraciones',
      'en': '',
    },
    'k6svelw7': {
      'es': 'Chef privado a domicilio',
      'en': '',
    },
    'k5ojkhcu': {
      'es': 'Meseros para eventos',
      'en': '',
    },
    '0tqc6cch': {
      'es': 'Clases de cocina',
      'en': '',
    },
    'kcykqz96': {
      'es': 'Refrigerios empresariales',
      'en': '',
    },
    'iqg3ncgn': {
      'es': 'Bartender',
      'en': '',
    },
    '9rk92a1p': {
      'es': 'Siguiente',
      'en': '',
    },
    '22zxvbij': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    '3d088vi5': {
      'es': 'Home',
      'en': '',
    },
  },
  // ArreglosLocativos
  {
    'ikj42snr': {
      'es': 'Arreglos Locativos',
      'en': '',
    },
    'q1bex1b4': {
      'es': 'Reparación de techos',
      'en': '',
    },
    'sgosm5jm': {
      'es': 'Pintura de interiores y exteriores',
      'en': '',
    },
    'ltz9anml': {
      'es': 'Carpintería',
      'en': '',
    },
    'fnihxex0': {
      'es': 'Servicios de albañilería',
      'en': '',
    },
    'nbgm3pfq': {
      'es': 'Instalación de pisos ',
      'en': '',
    },
    'rtjl927z': {
      'es': 'Plomeros - Fontaneos',
      'en': '',
    },
    't0zdgv70': {
      'es': 'Cielo razo',
      'en': '',
    },
    'b6h7l3kh': {
      'es': 'Soldador',
      'en': '',
    },
    'ksm3nr28': {
      'es': 'Fumigación',
      'en': '',
    },
    'capr1xyf': {
      'es': 'Estuco y Acabado',
      'en': '',
    },
    'bntcbwv2': {
      'es': 'Siguiente',
      'en': '',
    },
    'lret5j4l': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'qxajvhe2': {
      'es': 'Home',
      'en': '',
    },
  },
  // SaludyBienestar
  {
    'anpiknk4': {
      'es': 'Salud y Bienestar:',
      'en': '',
    },
    '38e3rxop': {
      'es': 'Consultas médicas a domicilio',
      'en': '',
    },
    'rr0wk2jy': {
      'es': 'Servicios de enfermería',
      'en': '',
    },
    'isc0vvs8': {
      'es': 'Terapia física y rehabilitación',
      'en': '',
    },
    'n3z2xn0t': {
      'es': 'Cuidado de pacientes en el hogar',
      'en': '',
    },
    'x5hgwmbl': {
      'es': 'Servicios de salud mental',
      'en': '',
    },
    'lkvvdbkx': {
      'es': 'Quiropractico',
      'en': '',
    },
    'pazzfw5e': {
      'es': 'Nutricionistas',
      'en': '',
    },
    'mg7hxizz': {
      'es': 'Asesoria en Salud',
      'en': '',
    },
    'xanb1fdz': {
      'es': 'Siguiente',
      'en': '',
    },
    'xn4l9laa': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'j4r252us': {
      'es': 'Home',
      'en': '',
    },
  },
  // DiseoyCostura
  {
    'l8x2acdf': {
      'es': 'Diseño y Costura:',
      'en': '',
    },
    'or68vcrf': {
      'es': 'Confección de ropa a medida',
      'en': '',
    },
    '6krdupjt': {
      'es': 'Diseño de moda',
      'en': '',
    },
    'bq83maad': {
      'es': 'Arreglo y modificación de prendas',
      'en': '',
    },
    'kej5tky1': {
      'es': 'Diseño de vestuario teatral',
      'en': '',
    },
    'fzuu1r8u': {
      'es': 'Confección de cortinas y textiles para el hogar',
      'en': '',
    },
    'w724wfu4': {
      'es': 'Ropa para niños/bebés',
      'en': '',
    },
    'bckcmd76': {
      'es': 'Uniformes institucionales',
      'en': '',
    },
    '2skrdw5k': {
      'es': 'Ropa de graduación',
      'en': '',
    },
    '7ndbdhmx': {
      'es': 'Siguiente',
      'en': '',
    },
    'lcfoh3a1': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'nw1ipnsr': {
      'es': 'Home',
      'en': '',
    },
  },
  // ProfesionalesenEnsayoInspeccinyCertificacindeProductos
  {
    'l1l430qd': {
      'es': 'Profesionales Inspección y Certificación  de Productos:',
      'en': '',
    },
    'w0brjpmr': {
      'es': 'Servicios de inspección de calidad',
      'en': '',
    },
    '3zov9ko0': {
      'es': 'Ensayos de laboratorio',
      'en': '',
    },
    'nu4qv7pw': {
      'es': 'Certificación de productos',
      'en': '',
    },
    'jbaaxjjg': {
      'es': 'Evaluación de conformidad',
      'en': '',
    },
    'cojy54nh': {
      'es': 'Inspección de seguridad',
      'en': '',
    },
    '5afg5mi9': {
      'es': 'Certificador de Andamios',
      'en': '',
    },
    'dlpgg6wz': {
      'es': 'HSEQ',
      'en': '',
    },
    'wk9e0tg7': {
      'es': 'Aseguramiento de Calidad y Control de Calidad QAQC',
      'en': '',
    },
    '9tk72dwe': {
      'es': 'Inspector de Recubrimientos',
      'en': '',
    },
    'xvme8hx7': {
      'es': 'Siguiente',
      'en': '',
    },
    'gpcx12kp': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'ui9vtrev': {
      'es': 'Home',
      'en': '',
    },
  },
  // EbanistayCarpintero
  {
    'iqxmpg2p': {
      'es': 'Ebanista y Carpintero:',
      'en': '',
    },
    '0ezozveh': {
      'es': 'Carpintería a medida',
      'en': '',
    },
    '8y3v40sl': {
      'es': 'Diseño y construcción de muebles',
      'en': '',
    },
    'cb7hkc67': {
      'es': 'Instalación de pisos de madera',
      'en': '',
    },
    'glxu6lkc': {
      'es': 'Restauración de muebles antiguos',
      'en': '',
    },
    'd2zagt1f': {
      'es': 'Carpintería para proyectos de construcción',
      'en': '',
    },
    'khpmtsdx': {
      'es': 'Carpinteria nautica',
      'en': '',
    },
    'axkwxfh5': {
      'es': 'Tapiceria',
      'en': '',
    },
    'gz7hp68i': {
      'es': 'Siguiente',
      'en': '',
    },
    'sm50o3ty': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    '6s9m0pet': {
      'es': 'Home',
      'en': '',
    },
  },
  // DiseoyMultimedia
  {
    'wl1ftbla': {
      'es': 'Diseño y Multimedia',
      'en': '',
    },
    'ehwve9ii': {
      'es': 'profesionales creativos',
      'en': '',
    },
    'g57masuk': {
      'es': 'Diseño gráfico',
      'en': '',
    },
    'y6gdz56b': {
      'es': 'Marketing Digital',
      'en': '',
    },
    'z94x2h6y': {
      'es': 'Gestión de redes sociales',
      'en': '',
    },
    '3f9o1ix1': {
      'es': 'Fotografia',
      'en': '',
    },
    '0evs3lut': {
      'es': 'Logos y tarjetas',
      'en': '',
    },
    '2zac05v9': {
      'es': 'Desarrollo web',
      'en': '',
    },
    'g6ycrhge': {
      'es': 'Representacion de marca /  Seo',
      'en': '',
    },
    '3fpjpkps': {
      'es': 'Siguiente',
      'en': '',
    },
    '6f0ai7lk': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    '2wkgxi3x': {
      'es': 'Home',
      'en': '',
    },
  },
  // Sectordelturismo
  {
    'rawigjb3': {
      'es': 'Sector del turismo',
      'en': '',
    },
    'fyasvx3e': {
      'es': 'Acompañamiento al viajero',
      'en': '',
    },
    'dpy715zs': {
      'es': 'Guía turista',
      'en': '',
    },
    '46417pfv': {
      'es': 'Traductor',
      'en': '',
    },
    '4jb6p8o3': {
      'es': 'Alquiler de Vehículos',
      'en': '',
    },
    'fwa9w9xr': {
      'es': 'Transporte para Turistas',
      'en': '',
    },
    'uady41ft': {
      'es': 'Tours y Excursiones',
      'en': '',
    },
    'jz0waml5': {
      'es': 'Hoteles y Alojamiento',
      'en': '',
    },
    'wh3jnxa6': {
      'es': 'Siguiente',
      'en': '',
    },
    'pnldvg0u': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'n901o1u9': {
      'es': 'Home',
      'en': '',
    },
  },
  // GruposyOrquestasMusicales
  {
    'p1lhzsoq': {
      'es': 'Grupos y Orquestas Musicales:',
      'en': '',
    },
    'a97jdvtr': {
      'es': 'Música en vivo para eventos',
      'en': '',
    },
    'umi7fcf6': {
      'es': 'Bandas de música',
      'en': '',
    },
    '7wki8q9f': {
      'es': 'Cantantes solistas',
      'en': '',
    },
    'v237a65h': {
      'es': 'DJs y servicios de sonido',
      'en': '',
    },
    'cozdx0ry': {
      'es': 'Coros y grupos vocales',
      'en': '',
    },
    '5ymyhwfp': {
      'es': 'Grupos de música folklórica',
      'en': '',
    },
    'uysxahkx': {
      'es': 'Grupos de música clásica',
      'en': '',
    },
    'l7465z9y': {
      'es': 'Agrupaciones de reggae',
      'en': '',
    },
    'bd2p1uvb': {
      'es': 'Grupos de música vallenato',
      'en': '',
    },
    'kt50amva': {
      'es': 'urbano',
      'en': '',
    },
    '1b2hi9x0': {
      'es': 'Agrupaciones de blues y jazz',
      'en': '',
    },
    'agmcparx': {
      'es': 'Agrupaciones de hip-hop',
      'en': '',
    },
    'bp4tfdw6': {
      'es': 'Tríos románticos',
      'en': '',
    },
    '16rq10ep': {
      'es': 'Dúos y solistas para serenatas',
      'en': '',
    },
    '3vpvt555': {
      'es': 'Grupos de música tropical',
      'en': '',
    },
    'bhmcankk': {
      'es': 'Bandas de baladas y boleros',
      'en': '',
    },
    'i8dacpra': {
      'es': 'Mariachis',
      'en': '',
    },
    '13cc8sez': {
      'es': 'Serenatas sorpresa',
      'en': '',
    },
    'bbgqithl': {
      'es': 'Serenatas virtuales',
      'en': '',
    },
    '2ybviwyv': {
      'es': 'Percusionistas',
      'en': '',
    },
    '1mftk13e': {
      'es': 'Acordioneros',
      'en': '',
    },
    'qeqis16y': {
      'es': 'Guitarristas',
      'en': '',
    },
    'fypqrq8f': {
      'es': 'Pianistas',
      'en': '',
    },
    'o065nfiz': {
      'es': 'Violinistas',
      'en': '',
    },
    'wz44qx7o': {
      'es': 'Violinistas',
      'en': '',
    },
    '0wa3i84w': {
      'es': 'Siguiente',
      'en': '',
    },
    'ofh633ku': {
      'es': 'Seleccione el servicio que \nrequiere',
      'en': '',
    },
    'qfjrzqmv': {
      'es': 'Home',
      'en': '',
    },
  },
  // PerfilPeluqueraMostradoaclienteCopy
  {
    'b6krxji8': {
      'es': 'Andrew',
      'en': '',
    },
    'x8nglon7': {
      'es':
          'Tengo amplia experiencia  en estetica y belleza, manicure, pedicure....\n',
      'en': '',
    },
    '4abgocg0': {
      'es': 'True Beauty (@true_beautyworld)',
      'en': '',
    },
    '657i1g3a': {
      'es': 'True Beauty (@true_beautyworld)',
      'en': '',
    },
    'oimfy93a': {
      'es': 'Informacion adicional ',
      'en': '',
    },
    'tuy8zi8f': {
      'es': 'Nacionalidad: Colombiana',
      'en': '',
    },
    'fir882uw': {
      'es': 'Genero: Femenino',
      'en': '',
    },
    '7gda3ghy': {
      'es': 'Cuenta con:',
      'en': '',
    },
    'zi4qmb8n': {
      'es': 'Rut',
      'en': '',
    },
    'yedeq1ax': {
      'es': 'Factura electronica',
      'en': '',
    },
    'j81kmlfz': {
      'es': 'Contactar',
      'en': '',
    },
    'id0u7azs': {
      'es': 'Cuidado y Belleza',
      'en': '',
    },
  },
  // proveedoreserva
  {
    'xkrn2gwt': {
      'es': 'Class Details',
      'en': '',
    },
    'vnu07o4u': {
      'es': 'Class Name',
      'en': '',
    },
    '43rmb2zz': {
      'es': '10:00am',
      'en': '',
    },
    '0u8ew5ey': {
      'es':
          'The best of all 3 worlds, Row & Flow offers high intensity rowing and strength intervals followed by athletic based yoga sure to enhance flexible and clear the mind. Yoga mats are provided but bringing your own yoga mat is highly encouraged.',
      'en': '',
    },
    'so16sbmw': {
      'es': '30m | High Intensity | Indoor/Outdoor',
      'en': '',
    },
    '4ybngdu3': {
      'es': 'Kye S',
      'en': '',
    },
    'kerw3a8a': {
      'es': 'Kye S',
      'en': '',
    },
    'mjrtz24o': {
      'es': 'Kye S',
      'en': '',
    },
    'qhoucd6e': {
      'es': 'Kye S',
      'en': '',
    },
    '1w4kx0pc': {
      'es': 'Reserve Spot',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'hmtaps2g': {
      'es': 'Select Location',
      'en': '',
    },
    'k9my8b3x': {
      'es': 'tomar captura',
      'en': '',
    },
    'zald0n2j': {
      'es': 'agregar foto',
      'en': '',
    },
    'i5pgdrco': {
      'es': 'ubicacion',
      'en': '',
    },
    'wzp6r5eo': {
      'es': 'agregar contactos',
      'en': '',
    },
    't2o8fq1t': {
      'es': 'notificaciones',
      'en': '',
    },
    '0mspdlz8': {
      'es': 'crear cita o solicitud',
      'en': '',
    },
    '664e3tz8': {
      'es': 'grabar',
      'en': '',
    },
    'e5c9hzxb': {
      'es': '',
      'en': '',
    },
    'jg7zc3uy': {
      'es': '',
      'en': '',
    },
    'wkpdvw3g': {
      'es': '',
      'en': '',
    },
    'gxeqy9ct': {
      'es': '',
      'en': '',
    },
    '3scu2dmm': {
      'es': '',
      'en': '',
    },
    'h1kcqlx5': {
      'es': '',
      'en': '',
    },
    '79n02j1v': {
      'es': '',
      'en': '',
    },
    'talxr0tz': {
      'es': '',
      'en': '',
    },
    '4upme6vi': {
      'es': '',
      'en': '',
    },
    '02ga5q9x': {
      'es': '',
      'en': '',
    },
    'mvwsgivb': {
      'es': '',
      'en': '',
    },
    'kugwd1aj': {
      'es': '',
      'en': '',
    },
    '290xz1rm': {
      'es': '',
      'en': '',
    },
    'dizjrevb': {
      'es': '',
      'en': '',
    },
    'i5md8hi4': {
      'es': '',
      'en': '',
    },
    'aktqbjpf': {
      'es': '',
      'en': '',
    },
    'l26wd7ff': {
      'es': '',
      'en': '',
    },
    'da5mzh77': {
      'es': '',
      'en': '',
    },
    'cohpnv03': {
      'es': '',
      'en': '',
    },
    'qx2nakb4': {
      'es': '',
      'en': '',
    },
    'dpvtr3yf': {
      'es': '',
      'en': '',
    },
    '8cthd4mi': {
      'es': '',
      'en': '',
    },
    'r18ksphn': {
      'es': '',
      'en': '',
    },
    'xjhsyzq2': {
      'es': '',
      'en': '',
    },
    'k4jdf3i5': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
