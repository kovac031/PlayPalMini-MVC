﻿using PlayPalMini.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlayPalMini.Repository.Common
{
    public interface IRegisteredUserRepository
    {
        Task<bool> SignUpAsync(RegisteredUserDTO userDTO);
        Task<RegisteredUserDTO> FindOneUserAsync(string username, string password);
        Task<bool> EditUserAsync(Guid id, RegisteredUserDTO userDTO);
        Task<RegisteredUserDTO> GetUserByIdAsync(Guid id);
        Task<List<RegisteredUserDTO>> GetAllUsersAsync();
    }
}
