	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <title>Resources Page</title>
	    <link rel="stylesheet" href="css/userresources.css" />
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script> 
	</head>
	<body>
	    <%@include file="components/usernavbar.jsp"%>
	
	    <div class="userresource-container">
	        <h1>Resources & Support</h1>
	        
	        <div class="resource-cards">
	            <!-- Support Articles Card -->
	            <div class="card">
	                <div class="card-header">
	                    <i class="fas fa-book-open"></i>
	                    <h2>Support Articles</h2>
	                </div>
	                <div class="card-body">
	                    <ul>
	                        <li><button class="btn-modal" onclick="openModal('articleModal')">Domestic Violence Awareness</button></li>
	                        <li><button class="btn-modal" onclick="openModal('legalRightsModal')">Legal Rights & Protection</button></li>
	                        <li><button class="btn-modal" onclick="openModal('selfCareModal')">Self-Care Strategies for Survivors</button></li>
	                    </ul>
	                </div>
	            </div>
	
	            <!-- Emergency Contacts Card -->
	            <div class="card">
	                <div class="card-header">
	                    <i class="fas fa-phone-alt"></i>
	                    <h2>Emergency Contacts</h2>
	                </div>
	                <div class="card-body">
	                    <ul>
	                        <li><button class="btn-modal" onclick="openModal('emergencyContactsModal')">View Emergency Contacts</button></li>
	                    </ul>
	                </div>
	            </div>
	
	            <!-- Guides & Documents Card -->
	            <div class="card">
	                <div class="card-header">
	                    <i class="fas fa-file-pdf"></i>
	                    <h2>Guides & Documents</h2>
	                </div>
	                <div class="card-body">
	                    <ul>
	                        <li><button class="btn-modal" onclick="openModal('guideModal')">Guide for Survivors (PDF)</button></li>
	                        <li><button class="btn-modal" onclick="openModal('rightsHandbookModal')">Legal Rights Handbook (PDF)</button></li>
	                        <li><button class="btn-modal" onclick="openModal('communitySupportModal')">Community Support Resources (PDF)</button></li>
	                    </ul>
	                </div>
	            </div>
	        </div>
	
	        <!-- Modals -->
	        <!-- Article Modal -->
	        <div id="articleModal" class="modal">
	            <div class="modal-content">
	                <span class="close-btn" onclick="closeModal('articleModal')">&times;</span>
	                <h2>Domestic Violence Awareness</h2>
	        <p><strong>What is Domestic Violence?</strong> Domestic violence refers to any pattern of abusive behavior used by one person to gain or maintain power and control over another person in a domestic setting. This includes physical, emotional, sexual, or economic abuse.</p>
	        
	        <p><strong>Types of Domestic Violence:</strong></p>
	        <ul>
	            <li><strong>Physical Abuse:</strong> Inflicting harm through hitting, slapping, pushing, choking, or other physical acts.</li>
	            <li><strong>Emotional/Verbal Abuse:</strong> Insulting, belittling, or threatening someone to undermine their self-worth.</li>
	            <li><strong>Sexual Abuse:</strong> Coercing or forcing someone into unwanted sexual acts.</li>
	            <li><strong>Economic Abuse:</strong> Controlling a partner's financial resources, preventing them from accessing money, or using finances as a tool for control.</li>
	        </ul>
	        
	        <p><strong>Warning Signs of Domestic Violence:</strong></p>
	        <ul>
	            <li>Frequent injuries or explanations that don't add up.</li>
	            <li>Isolation from family, friends, and loved ones.</li>
	            <li>Fear of angering or upsetting the partner.</li>
	            <li>Restricted freedom or control over daily activities (e.g., not being able to leave the house or work).</li>
	            <li>Constant criticism, humiliation, or blaming by the partner.</li>
	        </ul>
	
	        <p><strong>If you or someone you know is experiencing domestic violence, seek help immediately.</strong></p>
	        <p>Domestic violence is never your fault, and help is available. You deserve to be safe and respected. Reach out to support services, talk to someone you trust, or contact a helpline.</p>
	            </div>
	        </div>
	
	        <!-- Legal Rights Modal -->
	        <div id="legalRightsModal" class="modal">
	            <div class="modal-content">
	                <span class="close-btn" onclick="closeModal('legalRightsModal')">&times;</span>
	                <h2>Legal Rights & Protection</h2>
	                
	        <p>Domestic violence survivors are entitled to various legal protections to ensure their safety and well-being. These rights can differ depending on your location, but here are some common protections available:</p>
	
	        <h3>1. Protection Orders (Restraining Orders)</h3>
	        <p>A protection order is a legal order issued by a court that restricts the abuser's ability to come near you, your children, or your property. This can provide immediate relief and safety. Violation of a protection order can result in legal consequences for the abuser.</p>
	
	        <h3>2. Right to Shelter and Housing</h3>
	        <p>If you are in an abusive relationship and need to leave your home, you have the right to access shelters that provide temporary housing. In many cases, these shelters also offer supportive services like legal advice, therapy, and counseling.</p>
	
	        <h3>3. Child Custody & Support</h3>
	        <p>If children are involved, the law allows for custody arrangements that prioritize their safety and well-being. The abuser may be restricted from having access to the children, depending on the court’s decision. You may also have the right to child support to help with financial needs.</p>
	
	        <h3>4. Right to Legal Representation</h3>
	        <p>You have the right to seek legal counsel for any matters regarding domestic violence, including filing a police report, obtaining protection orders, or seeking divorce. Legal aid services are available for those who cannot afford a lawyer.</p>
	
	        <h3>5. Workplace Rights</h3>
	        <p>If domestic violence is affecting your ability to work, you may be entitled to take time off under certain circumstances. Workplace protections may include taking leave for medical appointments, moving to a safer environment, or attending legal proceedings.</p>
	
	        <h3>6. Criminal Prosecution of the Abuser</h3>
	        <p>Domestic violence is a crime. The abuser can be prosecuted for their actions, and you can cooperate with law enforcement during investigations. You are not obligated to continue contact with the abuser during the legal process, and the law protects you from retaliation.</p>
	
	        <h3>7. Financial Relief</h3>
	        <p>You may have the right to seek financial assistance or alimony in case of separation. Some laws also allow for the freezing of joint accounts and financial support during the legal proceedings.</p>
	
	        <p>If you are in immediate danger, do not hesitate to call emergency services. Legal support services are available to guide you through the process and ensure that your rights are upheld.</p>
	            </div>
	        </div>
	
	        <!-- Self Care Modal -->
	        <div id="selfCareModal" class="modal">
	            <div class="modal-content">
	                <span class="close-btn" onclick="closeModal('selfCareModal')">&times;</span>
	                <h2>Self-Care Strategies for Survivors</h2>
	                <p><strong>1. Seek Professional Support:</strong> Therapy and counseling provide a safe space to process emotions and explore coping mechanisms. Support groups allow survivors to share experiences and feel less isolated.</p>
	        <p><strong>2. Set Boundaries for Protection:</strong> Prioritize personal and emotional boundaries. Create a safe home environment, and protect emotional health by saying "no" to harmful situations or relationships.</p>
	        <p><strong>3. Practice Mindfulness and Grounding Techniques:</strong> Engage in mindfulness practices, such as meditation, breathing exercises, and grounding techniques to reduce stress and anxiety.</p>
	        <p><strong>4. Foster Healthy Relationships:</strong> Surround yourself with supportive, trustworthy people. Rebuilding trust is a gradual process, but healthy relationships are essential for healing.</p>
	        <p><strong>5. Engage in Physical Activity:</strong> Regular exercise helps release stress and improve mood. Getting enough rest and sleep is equally important for overall well-being.</p>
	        <p><strong>6. Practice Self-Compassion:</strong> Acknowledge your feelings, practice positive self-talk, and be kind to yourself. Self-compassion helps rebuild self-worth.</p>
	        <p><strong>7. Create a Safe Environment:</strong> Secure your home and create comforting rituals to establish a sense of peace and safety. Personal security is crucial for emotional healing.</p>
	        <p><strong>8. Reconnect with Your Passions and Hobbies:</strong> Engaging in creative activities such as art, writing, or music provides an outlet for self-expression and promotes healing.</p>
	        <p><strong>9. Empower Yourself through Education:</strong> Learn about your rights and available resources. Empowerment through education builds confidence and control.</p>
	            </div>
	        </div>
	
	        <!-- Emergency Contacts Modal -->
	        <div id="emergencyContactsModal" class="modal">
	            <div class="modal-content">
	                <span class="close-btn" onclick="closeModal('emergencyContactsModal')">&times;</span>
	                <h2>Emergency Contacts</h2>
	                <p><strong>National Helpline:</strong> 1-800-123-4567</p>
	                <p><strong>Local Support:</strong> [Add local contact numbers here]</p>
	                <p><strong>Email Support:</strong> <a href="mailto:support@domesticviolence.org">support@domesticviolence.org</a></p>
	            </div>
	        </div>
	
	        <!-- Guides Modal -->
	        <div id="guideModal" class="modal">
	            <div class="modal-content">
	                <span class="close-btn" onclick="closeModal('guideModal')">&times;</span>
	                <h2>Guide for Survivors (PDF)</h2>
	                <p>Here is the Guide for Survivors...</p>
	                <a href="img/guidebook.pdf" download="guidebook.pdf" class="download-link">Download Guide for Survivors (PDF)</a>
	            </div>
	        </div>
	
	        <!-- Legal Rights Handbook Modal -->
	        <div id="rightsHandbookModal" class="modal">
	            <div class="modal-content">
	                <span class="close-btn" onclick="closeModal('rightsHandbookModal')">&times;</span>
	                <h2>Legal Rights Handbook (PDF)</h2>
	                <p>Here is the Legal Rights Handbook...</p>
	                <a href="img/legalservices.pdf" download="LegalRightsHandbook.pdf" class="download-link">Download Legal Rights Handbook (PDF)</a>
	            </div>
	        </div>
	
	        <!-- Community Support Modal -->
	        <div id="communitySupportModal" class="modal">
	            <div class="modal-content">
	                <span class="close-btn" onclick="closeModal('communitySupportModal')">&times;</span>
	                <h2>Community Support Resources (PDF)</h2>
	                <p>Here is information about Community Support Resources...</p>
	                 <a href="img/domestic_violence.pdf" download="domestic_violence.pdf" class="download-link">Download Support Resources (PDF)</a>
	            </div>
	        </div>
	    </div>
	
	    <%@include file="components/footer.jsp"%>
	
	    <script>
	        // Open the modal
	        function openModal(modalId) {
	            document.getElementById(modalId).style.display = "block";
	        }
	
	        // Close the modal
	        function closeModal(modalId) {
	            document.getElementById(modalId).style.display = "none";
	        }
	
	        // Close modals when clicking outside of them
	        window.onclick = function(event) {
	            const modals = document.getElementsByClassName("modal");
	            for (let i = 0; i < modals.length; i++) {
	                if (event.target == modals[i]) {
	                    modals[i].style.display = "none";
	                }
	            }
	        }
	    </script>
	
	</body>
	</html>
