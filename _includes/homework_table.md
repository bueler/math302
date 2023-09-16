{% assign data = include.data %}
<table class="asst-table">
{% for homework in data.homework %}
<tr>
  <td><b>Homework {{ homework.name }}</b> &nbsp; &nbsp; Due {{ homework.due }}.<br><br>
      {% if homework.override %}
      <table class="inner">
        <tr>
          <td>{{ homework.comment }}</td>
        </tr>
        <tr>
          <td><a href="{{ data.home }}/{{ homework.override }}">Please do the problems on this (PDF).</a></td>
        </tr>
      </table>
      {% else %}
      <table class="inner">
        {% if homework.link %}
        <tr>
          <td> <a href="{{ homework.link }}">{{ homework.linktext }} </a></td>
        </tr>
        {% endif %}
        <tr>
          <td>please read section {{ homework.name }}</td>
        </tr>
        {% if homework.correct %}
        <tr>
          <td><em>graded for correctness:</em> <br>&nbsp;&nbsp;&nbsp;&nbsp; # {{ homework.correct }}</td>
        </tr>
        {% endif %}
        {% if homework.complete %}
        <tr>
          <td><em>graded for completeness only:</em> <br>&nbsp;&nbsp;&nbsp;&nbsp; # {{ homework.complete }}</td>
        </tr>
        {% endif %}
        {% if homework.supp %}
          <tr>
            <td>see <a href="{{ data.home }}/{{ homework.supp }}">special instructions (PDF)</a></td>
          </tr>
        {% endif %}
      </table>
    {% endif %}
  </td>
</tr>
{% endfor %}
</table>
