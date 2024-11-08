package com.smhrd.model;

public class UsedComment {

	int usedCmtId;
	int usedId;
	String usedComments;
	String createdAt;
	String id;
	int superUsedCmtId;
	public UsedComment(int usedCmtId, int usedId, String usedComments, String createdAt, String id,
			int superUsedCmtId) {
		super();
		this.usedCmtId = usedCmtId;
		this.usedId = usedId;
		this.usedComments = usedComments;
		this.createdAt = createdAt;
		this.id = id;
		this.superUsedCmtId = superUsedCmtId;
	}
	public int getUsedCmtId() {
		return usedCmtId;
	}
	public int getUsedId() {
		return usedId;
	}
	public String getUsedComments() {
		return usedComments;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public String getId() {
		return id;
	}
	public int getSuperUsedCmtId() {
		return superUsedCmtId;
	}
	
	
}
