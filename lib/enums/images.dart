enum Images {
	introductryBackground,
}

extension ImagesExt on Images {

	String get path {
		switch(this){
			case Images.introductryBackground:
				return 'assets/images/introductry_background.jpg';
		}
	}
}
