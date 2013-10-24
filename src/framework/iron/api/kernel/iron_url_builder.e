note
	description: "[
				URLs builder to access IRON api
				
				note: if the remote API changes, update this class.
			]"
	date: "$Date: 2013-09-24 15:52:55 +0200 (mar., 24 sept. 2013) $"
	revision: "$Revision: 92997 $"

class
	IRON_URL_BUILDER

feature -- URL path

	path_package_list (a_repo: IRON_REPOSITORY): READABLE_STRING_8
		do
			Result := "/access/" + a_repo.version + "/package/"
		end

	path_create_package (a_repo: IRON_REPOSITORY): READABLE_STRING_8
		do
			Result := "/access/" + a_repo.version + "/package/"
		end

	path_update_package (a_repo: IRON_REPOSITORY; a_package: IRON_PACKAGE): READABLE_STRING_8
		do
			Result := "/access/" + a_repo.version + "/package/" + a_package.id
		end

	path_package_delete (a_repo: IRON_REPOSITORY; a_package: IRON_PACKAGE): READABLE_STRING_8
		do
			Result := path_update_package (a_repo, a_package)
		end

	path_upload_package_archive (a_repo: IRON_REPOSITORY; a_package: IRON_PACKAGE): READABLE_STRING_8
		do
			Result := path_update_package (a_repo, a_package) + "/archive"
		end

	path_add_package_index (a_repo: IRON_REPOSITORY; a_package: IRON_PACKAGE): READABLE_STRING_8
		do
			Result := path_update_package (a_repo, a_package) + "/map"
		end

note
	copyright: "Copyright (c) 1984-2013, Eiffel Software"
	license: "GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options: "http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful, but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
		]"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end