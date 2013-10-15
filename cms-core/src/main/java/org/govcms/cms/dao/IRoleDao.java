package org.govcms.cms.dao;

import java.util.List;

import org.fanyang.basic.dao.IBaseDao;
import org.govcms.cms.model.Role;

public interface IRoleDao extends IBaseDao<Role> {
	public List<Role> listRole();
	public void deleteRoleUsers(int rid);
}
