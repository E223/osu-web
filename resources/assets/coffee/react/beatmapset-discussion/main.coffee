###
# Copyright 2015 ppy Pty. Ltd.
#
# This file is part of osu!web. osu!web is distributed with the hope of
# attracting more community contributions to the core ecosystem of osu!.
#
# osu!web is free software: you can redistribute it and/or modify
# it under the terms of the Affero GNU General Public License version 3
# as published by the Free Software Foundation.
#
# osu!web is distributed WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with osu!web.  If not, see <http://www.gnu.org/licenses/>.
###
{a, div, h1} = React.DOM
el = React.createElement

BeatmapsetDiscussion.Main = React.createClass
  mixins: [React.addons.PureRenderMixin]


  getInitialState: ->
    beatmapset: initial.beatmapset.data
    currentBeatmapIndex: 0


  render: ->
    currentBeatmap = @state.beatmapset.beatmaps.data[@state.currentBeatmapIndex]

    div null,
      div
        className: 'osu-layout__row'
        div
          className: 'forum-category-header forum-category-header--topic'
          style:
            backgroundImage: "url('#{Url.beatmapsetCover @state.beatmapset.beatmapset_id}')"
          div
            className: 'forum-category-header__titles'
            h1
              className: 'forum-category-header__title'
              a
                href: 'butts'
                className: 'link link--white link--no-underline'
                @state.beatmapset.title
        div
          className: 'beatmap-discussion-overview'

          div
            className: 'beatmap-discussion-overview__beatmaps'
            div
              className: 'beatmap-list'
              el BeatmapIcon, beatmap: currentBeatmap, modifier: 'big'
