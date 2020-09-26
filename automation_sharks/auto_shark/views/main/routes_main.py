from flask_login import login_required

from auto_shark import db
from auto_shark.models import User, Project, Module, Final, Program
from flask import render_template, Blueprint


main = Blueprint('main', __name__)


@main.route("/")
@main.route("/home")
@login_required
def home():
    programs = Program.query.all()
    projects = Project.query.all()
    return render_template('main/home.html',
                           programs=programs,
                           projects=projects)


@main.route("/scores", methods=['GET', 'POST'])
@login_required
def scores():
    modules = Module.query.all()
    finals = Final.query.all()

    return render_template('main/scores.html', modules=modules, finals=finals)


@main.route("/program/<program_name>")
def project_program(program_name):
    program = Program.query.filter_by(program_name=program_name).first_or_404()
    projects = Project.query.filter_by(line=program)

    return render_template('project/program_projects.html', program=program,
                           projects=projects)






