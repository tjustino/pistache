// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.datepicker
//= require_tree .

$(function() {
	$.datepicker.regional["fr"] = {
		closeText: "Fermer",
		prevText: "Précédent",
		nextText: "Suivant",
		currentText: "Aujourd'hui",
		monthNames: ["Janvier","Février","Mars","Avril","Mai","Juin",
		"Juillet","Août","Septembre","Octobre","Novembre","Décembre"],
		monthNamesShort: ["Jan","Fév","Mar","Avr","Mai","Jun",
		"Jul","Aoû","Sep","Oct","Nov","Déc"],
		dayNames: ["Dimanche","Lundi","Mardi","Mercredi","Jeudi","Vendredi","Samedi"],
		dayNamesShort: ["Dim","Lun","Mar","Mer","Jeu","Ven","Sam"],
		dayNamesMin: ["Di","Lu","Ma","Me","Je","Ve","Sa"],
		weekHeader: "Sm",
		dateFormat: "dd/mm/yy",
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ""};
	$.datepicker.setDefaults($.datepicker.regional["fr"]);
	$(".datepicker").datepicker({
		showWeek: true,
		firstDay: 1,
		showButtonPanel: true
	});
});
