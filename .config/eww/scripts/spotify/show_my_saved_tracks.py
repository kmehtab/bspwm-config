#!/usr/bin/python

# Shows a user's saved tracks (need to be authenticated via oauth)

import spotipy
from spotipy.oauth2 import SpotifyOAuth

scope = 'user-library-read'


def show_tracks(results):
    for item in results['items']:
        track = item['track']
        print(track['id'])


sp = spotipy.Spotify(auth_manager=SpotifyOAuth(scope=scope, cache_path="/home/barbarossa/.config/eww/scripts/spotify/show_cache/.cache"))

results = sp.current_user_saved_tracks()
show_tracks(results)

while results['next']:
    results = sp.next(results)
    show_tracks(results)
