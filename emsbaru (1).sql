-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2020 pada 13.01
-- Versi server: 10.4.14-MariaDB-log
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emsbaru`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `attend_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `attend_date` date NOT NULL,
  `attend_in` time NOT NULL,
  `attend_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `attendance`
--

INSERT INTO `attendance` (`attend_id`, `employee_id`, `attend_date`, `attend_in`, `attend_out`) VALUES
(1, 100100, '2020-12-18', '07:36:04', '16:36:04'),
(2, 100108, '2020-12-18', '06:36:04', '16:54:04'),
(3, 100109, '2020-12-18', '06:38:13', '16:38:04'),
(7, 100103, '2020-12-18', '06:39:14', '16:40:04'),
(8, 100107, '2020-12-18', '06:40:45', '16:46:04'),
(9, 100111, '2020-12-18', '06:42:36', '16:51:04'),
(10, 100110, '2020-12-18', '06:43:12', '16:55:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `department_building_id` int(11) NOT NULL,
  `dept_name` varchar(25) NOT NULL,
  `dept_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `department`
--

INSERT INTO `department` (`dept_id`, `department_building_id`, `dept_name`, `dept_desc`) VALUES
(1, 35, 'Marketing and sales', 'marketing and sales adalah bagian pemasaran dan penjualan di perusahaan'),
(2, 20, 'Human resouce', 'Human resouce adalah bagian yang mengurus karyawan di perusahaan'),
(4, 40, 'Finance', 'finance adalah bagian yang mengurus keuangan di perusahaan'),
(5, 33, 'IT', 'IT adalah bagian yang mengurus teknologi di perusahaan'),
(6, 23, 'Administration', 'administrasi adalah bagian yang mengurus administradi di perusahaan'),
(7, 29, 'Executive', 'executive adalah departmen yang berisi petinggi perusahaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `department_building`
--

CREATE TABLE `department_building` (
  `department_building_id` int(11) NOT NULL,
  `department_floor_id` int(11) NOT NULL,
  `building` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `department_building`
--

INSERT INTO `department_building` (`department_building_id`, `department_floor_id`, `building`, `address`) VALUES
(20, 1, 'Gedung A', 'sukabirus'),
(23, 2, 'Gedung A', 'sukabirus'),
(25, 3, 'Gedung A', 'sukabirus'),
(29, 4, 'Gedung A', 'sukabirus'),
(30, 5, 'Gedung A', 'sukabirus'),
(33, 2, 'Gedung B', 'sukapura'),
(35, 3, 'Gedung B', 'sukapura'),
(40, 4, 'Gedung B', 'sukapura'),
(43, 5, 'Gedung B', 'sukapura');

-- --------------------------------------------------------

--
-- Struktur dari tabel `department_floor`
--

CREATE TABLE `department_floor` (
  `department_floor_id` int(11) NOT NULL,
  `floor` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `department_floor`
--

INSERT INTO `department_floor` (`department_floor_id`, `floor`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `empleavetype`
--

CREATE TABLE `empleavetype` (
  `emp_leavetype_id` int(11) NOT NULL,
  `leave_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `empleavetype`
--

INSERT INTO `empleavetype` (`emp_leavetype_id`, `leave_type`) VALUES
(1, 'cuti tahunan'),
(2, 'cuti sakit'),
(3, 'cuti penting'),
(4, 'cuti menstruasi'),
(5, 'cuti melahirkan'),
(6, 'cuti pendidikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `emp_name` varchar(25) NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_title` varchar(10) NOT NULL,
  `emp_mobile_no` varchar(25) NOT NULL,
  `emp_city` varchar(25) NOT NULL,
  `emp_doj` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`employee_id`, `dept_id`, `position_id`, `gender_id`, `emp_name`, `emp_dob`, `emp_title`, `emp_mobile_no`, `emp_city`, `emp_doj`) VALUES
(100100, 7, 1, 2, 'Farhan', '1973-09-05', 'S.T., M.T', '(+62)87808763487', 'Bandung', '2015-12-01'),
(100101, 5, 3, 2, 'Satria', '1976-06-05', 'S.T., M.T', '(+62)87819758487', 'Jakarta', '2015-12-01'),
(100102, 1, 3, 2, 'Malik', '1978-12-12', 'S.E., M.E.', '(+62)87819263487', 'Bandung', '2015-12-01'),
(100103, 7, 2, 1, 'Vina', '1983-07-23', 'S.T.', '(+62)81297583420', 'Tangerang', '2015-12-01'),
(100104, 2, 3, 1, 'Laura', '1984-12-31', 'S.Psi', '(+62)87809263487', 'Tangerang', '2015-12-01'),
(100105, 4, 3, 1, 'Zakiya', '1978-02-26', 'S.T., M.T', '(+62)87802363487', 'Bogor', '2015-12-01'),
(100106, 6, 3, 1, 'Suci', '1979-08-05', 'S.AB', '(+62)81298764530', 'Bandung', '2015-12-01'),
(100107, 1, 4, 2, 'Amjad', '1989-05-27', 'S.E.', '(+62)81298263487', 'Bekasi', '2015-12-01'),
(100108, 2, 4, 2, 'Bambang', '1991-12-08', 'S.Psi', '(+62)81230926348', 'Bogor', '2015-12-01'),
(100109, 4, 4, 1, 'Monica', '1990-07-06', 'S.E', '(+62)81395583420', 'Bandung', '2015-12-01'),
(100110, 5, 4, 2, 'Aulia', '1989-05-15', 'S.T., M.T', '(+62)81209290487', 'Bandung', '2015-12-01'),
(100111, 6, 4, 1, 'Cinta', '1994-01-06', 'S.E.', '(+62)81208926348', 'Depok', '2015-12-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `emp_leave`
--

CREATE TABLE `emp_leave` (
  `leave_id` int(11) NOT NULL,
  `emp_leavetype_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_start` date NOT NULL,
  `leave_end` date NOT NULL,
  `leave_date` int(11) NOT NULL,
  `leave_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `emp_leave`
--

INSERT INTO `emp_leave` (`leave_id`, `emp_leavetype_id`, `employee_id`, `leave_start`, `leave_end`, `leave_date`, `leave_status`) VALUES
(2, 5, 100111, '2016-09-21', '2017-01-28', 129, 'accepted'),
(3, 2, 100107, '2018-03-12', '2018-03-24', 12, 'accepted'),
(4, 1, 100108, '2020-12-31', '2021-01-31', 31, 'Accepted');

--
-- Trigger `emp_leave`
--
DELIMITER $$
CREATE TRIGGER `selisih_hari` BEFORE INSERT ON `emp_leave` FOR EACH ROW BEGIN
	set new.leave_date = datediff(new.leave_end, new.leave_start);
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gender`
--

CREATE TABLE `gender` (
  `gender_id` int(11) NOT NULL,
  `gender_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
(1, 'Perempuan'),
(2, 'Laki-laki'),
(3, 'Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday _date` date NOT NULL,
  `holiday_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday _date`, `holiday_name`) VALUES
(3, '2020-12-25', 'libur natal'),
(4, '2020-12-31', 'libur tahun baru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payroll`
--

CREATE TABLE `payroll` (
  `payroll_id` int(10) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `payroll_date` date NOT NULL,
  `health_allowance` int(25) NOT NULL,
  `performance_allowance` int(25) NOT NULL,
  `overtime` int(25) NOT NULL,
  `salary` int(25) NOT NULL,
  `amount` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `payroll`
--

INSERT INTO `payroll` (`payroll_id`, `employee_id`, `payroll_date`, `health_allowance`, `performance_allowance`, `overtime`, `salary`, `amount`) VALUES
(4, 100107, '2020-12-01', 100000, 250000, 150000, 15000000, 15500000);

--
-- Trigger `payroll`
--
DELIMITER $$
CREATE TRIGGER `jumlah_gaji` BEFORE INSERT ON `payroll` FOR EACH ROW BEGIN
SET new.amount = new.health_allowance + new.performance_allowance +new.overtime +new.salary;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position`
--

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `position`
--

INSERT INTO `position` (`position_id`, `position_name`) VALUES
(1, 'Direktur'),
(2, 'Sekretaris'),
(3, 'Supervisor'),
(4, 'Staff'),
(5, 'direktur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resign`
--

CREATE TABLE `resign` (
  `resign_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `resign_date` date NOT NULL,
  `reason` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `resign`
--

INSERT INTO `resign` (`resign_id`, `employee_id`, `resign_date`, `reason`) VALUES
(1, 100100, '2020-12-12', 'pindah perusahaan'),
(4, 100101, '2020-12-12', 'bebas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(10) NOT NULL,
  `user_role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `user_role`) VALUES
(1, 'Suci', 'suci', 'karyawan'),
(2, 'Aulia', 'aulia', 'karyawan'),
(3, 'Vina', 'vina', 'karyawan'),
(4, 'Bambang', 'bambang', 'admin'),
(5, 'Monica', 'monica', 'karyawan'),
(6, 'Laura', 'laura', 'admin'),
(7, 'Amjad', 'amjad', 'karyawan'),
(8, 'Malik', 'malik', 'karyawan'),
(9, 'Farhan', 'farhan', 'karyawan'),
(10, 'Satria', 'satria', 'karyawan'),
(11, 'Zakiya', 'zakiya', 'karyawan'),
(12, 'Cinta', 'cinta', 'karyawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attend_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indeks untuk tabel `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD KEY `department_building_id` (`department_building_id`);

--
-- Indeks untuk tabel `department_building`
--
ALTER TABLE `department_building`
  ADD PRIMARY KEY (`department_building_id`),
  ADD KEY `department_floor_id` (`department_floor_id`);

--
-- Indeks untuk tabel `department_floor`
--
ALTER TABLE `department_floor`
  ADD PRIMARY KEY (`department_floor_id`);

--
-- Indeks untuk tabel `empleavetype`
--
ALTER TABLE `empleavetype`
  ADD PRIMARY KEY (`emp_leavetype_id`);

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- Indeks untuk tabel `emp_leave`
--
ALTER TABLE `emp_leave`
  ADD PRIMARY KEY (`leave_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `emp_leavetype_id` (`emp_leavetype_id`);

--
-- Indeks untuk tabel `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indeks untuk tabel `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indeks untuk tabel `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`payroll_id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indeks untuk tabel `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indeks untuk tabel `resign`
--
ALTER TABLE `resign`
  ADD PRIMARY KEY (`resign_id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `department_floor`
--
ALTER TABLE `department_floor`
  MODIFY `department_floor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `empleavetype`
--
ALTER TABLE `empleavetype`
  MODIFY `emp_leavetype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `emp_leave`
--
ALTER TABLE `emp_leave`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `payroll`
--
ALTER TABLE `payroll`
  MODIFY `payroll_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `resign`
--
ALTER TABLE `resign`
  MODIFY `resign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Ketidakleluasaan untuk tabel `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`department_building_id`) REFERENCES `department_building` (`department_building_id`);

--
-- Ketidakleluasaan untuk tabel `department_building`
--
ALTER TABLE `department_building`
  ADD CONSTRAINT `department_building_ibfk_1` FOREIGN KEY (`department_floor_id`) REFERENCES `department_floor` (`department_floor_id`);

--
-- Ketidakleluasaan untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`);

--
-- Ketidakleluasaan untuk tabel `emp_leave`
--
ALTER TABLE `emp_leave`
  ADD CONSTRAINT `emp_leave_ibfk_2` FOREIGN KEY (`emp_leavetype_id`) REFERENCES `empleavetype` (`emp_leavetype_id`),
  ADD CONSTRAINT `emp_leave_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Ketidakleluasaan untuk tabel `payroll`
--
ALTER TABLE `payroll`
  ADD CONSTRAINT `payroll_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Ketidakleluasaan untuk tabel `resign`
--
ALTER TABLE `resign`
  ADD CONSTRAINT `resign_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
