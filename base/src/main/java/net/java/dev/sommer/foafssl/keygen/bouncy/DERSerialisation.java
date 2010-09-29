package net.java.dev.sommer.foafssl.keygen.bouncy;

import net.java.dev.sommer.foafssl.keygen.Certificate;

import java.security.cert.CertificateEncodingException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * A DER serialisation of a certificate
 * This is the one that Safari, Firefox and Opera understand out of the box
 *
 * @author Henry Story
 * @since Mar 12, 2010
 */
public class DERSerialisation extends DefaultCertSerialisation {
	final static transient Logger log = Logger.getLogger(DERSerialisation.class.getName());

	byte[] ser = null;

	DERSerialisation(Certificate cer) {
		super(cer);
	}

	@Override
	public byte[] getContent() {
		if (ser == null) {
			try {
				ser = cer.getCertificate().getEncoded();
			} catch (CertificateEncodingException e) {
				log.log(Level.WARNING, "could not DER encode the give certificate.");
			}
		}
		return ser;
	}

	public String getMimeType() {
		return "application/x-x509-user-cert";
	}
}