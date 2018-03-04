# exercise2_9.R
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

# Cuando usamos incorrectamente && en lugar de
# & para est tipo de casos, R
# simplemente evalúa los primeros resultados
# de los vectores l+ogicos e ignora el resto. En general
# && es pereferido por el control de flujo, es decir,
# el uso de los condicionales if o while
remove('x')
x <- rbinom(100,5,0.80)
x[(x>1)&(x<3)]