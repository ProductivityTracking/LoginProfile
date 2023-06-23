package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.dao.Profdao;
import com.spring.model.ProfileModel;

@Controller
public class ProfileController {
	Profdao profService;

	@Autowired
	public ProfileController(Profdao Profdaoimpl) {
		this.profService = Profdaoimpl;
	}

	// @RequestMapping(value = "/")
	// public String getProfile(Model model) {
	// List<ProfileModel> profiles = profService.getAllprof();
	// // List<Prof2> profiles = profdao2.getallprof();
	// // Add the profile data to the model
	// model.addAttribute("profiles", profiles);
	// System.out.println("done here for correction");
	// System.out.println(profiles);
	//
	// // // Return the logical view name
	// return "profile";
	// }
	@RequestMapping(value = "/")
	public String getProfile(Model model) {
		List<ProfileModel> profiles = profService.getProfile(1);
		// List<Prof2> profiles = profdao2.getallprof();
		// Add the profile data to the model
		model.addAttribute("profiles", profiles);
		System.out.println("done here for correction");
		System.out.println(profiles);

		// // Return the logical view name
		return "profile";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String editProfile(Model model) {
		List<ProfileModel> profiles = profService.getProfile(1);
		model.addAttribute("profiles", profiles);
		return "edit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePassword(@RequestParam("password") String password, @RequestParam("id") Integer id) {
		profService.updatepassword(password, id);
		System.out.println(password + " " + id);
		return "redirect:/";
	}
}

// @GetMapping("/edit")
// public String editProfile(Model model) {
// List<Prof> profiles = profdao2.getallprof();
// model.addAttribute("profiles", profiles);
// return "edit2";
// }

// @PostMapping("/update")
// public String update(Prof2 p2) {
// profdao2.updatepassword(p2);
// return "redirect:/";
// }

// Other controller methods
