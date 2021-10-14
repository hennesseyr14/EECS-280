#include <iostream>

using namespace std;

class Enemy {
	int hp;
public:
	Enemy(int hp_) : hp(hp_) {}
	virtual int attack() const = 0;
	int get_current_hp() const { return hp; }
	void receive_damage(int damage) { hp -= damage; }
	virtual void describe() const { cout << "hp: " << hp << endl; }
};

class Dragon : public Enemy {
	int power;
	double multiplier;
public:
	Dragon() : Enemy(50), power(100), multiplier(1.5) {}
	// Dragon’s custom constructor
	Dragon(double mult) : Enemy(50), power(100), multiplier(mult) {}

	void receive_damage (int damage) {
		Enemy::receive_damage(damage / 2);
	}
	virtual void describe() const override {
		Enemy::describe();
		//cout << "hp: " << get_current_hp() << endl;
		cout << "power: " << power << endl;
		cout << "multiplier: " << multiplier << endl;
	}
	int attack() const override { return power * multiplier; }
};

int main() {
	Dragon smaug;
	Dragon drogon(2.5);
	Enemy* e_ptr = &drogon;
	cout << "smaug  hp: " << smaug.get_current_hp() << endl;
	cout << "drogon hp: " << e_ptr->get_current_hp() << endl;
	smaug.receive_damage(10);
	e_ptr->receive_damage(10);
	cout << "Smaug  hp: " << smaug.get_current_hp() << endl;
	cout << "Drogon hp: " << e_ptr->get_current_hp() << endl;

	smaug.describe();
	e_ptr->describe();
}
