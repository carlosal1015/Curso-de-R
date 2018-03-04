# exercise4_2.R
#
# Copyright © 2018 Oromion <caznaranl@uni.pe>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

bdiris <- iris
head(bdiris)
bdiris <- bdiris[,c(1,2)]

layout(matrix(c(1,2,3,3), 2, 2, byrow = T))
layout.show(3)
plot(bdiris)
plot(bdiris, col="red")
plot(bdiris, col="blue")
