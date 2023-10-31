{% assign data = include.data %}
<table class="asst-table">
{% for quiz in data.quizzes %}
<tr>
    <td>
        <table class="inner">
            <tr>
                <td>{{ quiz.name }} &nbsp; &nbsp; {{ quiz.date }}</td>
            </tr>
            {% if quiz.sections %}
            <tr>
                <td>sections: {{ quiz.sections }}</td>
            </tr>
            {% endif %}
            {% if quiz.blank %}
            <tr>
                <td><a href="{{ data.home }}/{{ quiz.blank }}">blank</a></td>
            </tr>
            {% endif %}
        </table>
    </td>
</tr>
{% endfor %}
</table>
