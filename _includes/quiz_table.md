{% assign data = include.data %}
<table class="asst-table">
{% for quiz in data.quizzes %}
<tr>
  <td>
		<table class="inner">
		  <tr>
			    <td>{{ quiz.name }} &nbsp; &nbsp; {{ quiz.date }}</td>
			</tr>
			<tr>
			    <td>sections: {{ quiz.sections }}</td>
			</tr>
		</table>
	</td>
</tr>
{% endfor %}
</table>
