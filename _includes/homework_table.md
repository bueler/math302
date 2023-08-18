{% assign data = include.data %}
<table class="asst-table">
{% for homework in data.homework %}
<tr>
  <td><b>{{ homework.name }}</b> &nbsp; &nbsp; Due {{ homework.due }}.<br><br>
    {% if homework.override %}
      <table class="inner">
        <tr>
          <td>The textbook problems are poorly-aligned with</td>
        </tr>
        <tr>
          <td>the section text and lecture.  Instead,</td>
        </tr>
        <tr>
          <td><a href="{{ data.home }}/{{ homework.override }}">please do the problems on this (PDF)</a>.</td>
        </tr>
      </table>
    {% else %}
      <table class="inner">
      {% for section in homework.sections %}
        <tr>
          <td><em>&#167;{{ section.section }}:</em> &nbsp; # {{ section.problems }}</td>
        </tr>
        {% if section.cont %}
          <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {{ section.cont }}</td>
          </tr>
        {% endif %}
        {% if section.contcont %}
          <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {{ section.contcont }}</td>
          </tr>
        {% endif %}
        {% if section.supp %}
          <tr>
            <td>see <a href="{{ data.home }}/{{ section.supp }}">special instructions (PDF)</a></td>
          </tr>
        {% endif %}
      {% endfor %}
      </table>
    {% endif %}
  </td>
</tr>
{% endfor %}
</table>
