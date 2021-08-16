package edu.drexel.psal.anonymouth.utils;

import java.io.IOException;

import edu.drexel.psal.ANONConstants;
import edu.stanford.nlp.tagger.maxent.MaxentTagger;
import edu.drexel.psal.jstylo.generics.Logger;

public class Tagger {
	
	@SuppressWarnings("unused")
	private final String NAME = "( "+this.getClass().getSimpleName()+" ) - ";
	public static MaxentTagger mt = null;
	
	public Tagger(){
		initTagger();
	}
	
	/**
	 * Initializes MaxentTagger
	 * @return true if successful, false otherwise
	 */
	public static boolean initTagger(){
		try {
			//mt = new MaxentTagger("."+JGAAPConstants.JGAAP_RESOURCE_PACKAGE+"models/postagger/english-left3words-distsim.tagger");
            String path = ANONConstants.EXTERNAL_RESOURCE_PACKAGE + "english-left3words-distsim.tagger";
            //Logger.logln("Loading MaxentTagger resources from " + path);
			mt = new MaxentTagger(path);
			return true;
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

}
