package server

import (
	"time"

	"golang.org/x/crypto/bcrypt"
)

type Password struct {
	Plaintext string
	Hash      []byte
}

func (p *Password) Set(plaintextPassword string) error {
	hash, err := bcrypt.GenerateFromPassword([]byte(plaintextPassword), bcrypt.DefaultCost)
	if err != nil {
		return err
	}

	p.Plaintext = plaintextPassword
	p.Hash = hash

	return nil
}

func (p *Password) Matches(plaintextPassword string) (bool, error) {
	err := bcrypt.CompareHashAndPassword(p.Hash, []byte(plaintextPassword))
	if err != nil {
		return false, err
	}

	return true, nil
}

type Workout struct {
	Id         int
	Title      string
	Details    []*Detail
	Categories []*Category
}

type Detail struct {
	Id          int
	Name        string
	Image       string
	Description string
	Time        int
	Rep         int
}

type Category struct {
	Id   int
	Name string
}

type User struct {
	ID            int        `json:"id"`
	Name          string     `json:"name"`
	Email         string     `json:"email"`
	Password      Password   `json:"-"`
	Token         *string    `json:"-"`
	Expires       *time.Time `json:"-"`
	LikedWorkouts []*Workout `json:"liked"`
}
