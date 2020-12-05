﻿using System.Security.Cryptography;
using System.Text;

namespace mypham
{
    /// <summary>
    /// Summary description for MaHoa
    /// </summary>
    public class MaHoa
    {
        /// <summary>
        /// Trả về chuỗi được mã hóa
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static string MaHoaMD5(string input)
        {
            MD5 md5Hasher = MD5.Create();
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));
            StringBuilder sBuilder = new StringBuilder();
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }
            return sBuilder.ToString();
        }
    }
}