<!-- Javascript -->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Javascript<br />
                <small>Den JavaScript-Code binden Sie im Optimalfall am Ende Ihrer Webseite vor dem schließenden </body>-Tag ein. Alternativ kann dies auch an derselben Stelle wie beim CSS-Code
                    geschehen.</small>
            </h3>
        </div>
    </div>
    <div class="card-body">

        <h3>Hinweis (Standard)</h3>
        <ul>
            <li>Sie können data-fallback="" & data-fallback-last="" nach Belieben in jeden der hier ausgegebenen Codes verwenden. Ein Fallback verhindert eine Fehlerausgabe, indem eine funktionierende
                Alternative ausgegeben wird. Schauen Sie im ersten Beispiel um zu verstehen wie man beide Fallbacks in einen Abruf verwendet.</li>
            <li>Sie können data-error="" nach Belieben bearbeiten. Dadurch haben Sie die Möglichkeit, die Standardfehlermeldung abzuändern. Alternativ könnten Sie auch einfach einen Text
                hinterlegen, der dem Nutzer nicht sofort suggeriert, dass ein Fehler in der Ausgabe vorliegt.</li>
        </ul>

        <h3>Hinweis (Pro)</h3>
        <ul>
            <li>Die Endausgabe sämtlicher Codes ermöglicht die Darstellung von Bildern, die auf dem Wert der abschließenden Ausgabe basieren. Verwenden Sie dafür das Attribut `data-show-as="img"`
                innerhalb der Codes.</li>
            <li>Weitere Informationen zu den Erweiterten Möglichkeiten, finden Sie <a href="https://www.spcast.eu/faq/externe-skripte/erweiterte-moeglichkeiten-der-programmdetails/" target="_blank"
                    rel="noopener">hier</a>.</li>
        </ul>

        <h3>Javascript</h3>
        <p>Damit die hier aufgerufenen Codes funktionieren, müssen Sie das JavaScript, wie angegeben, innerhalb Ihrer Webseite einbinden. Ist dies erfolgt, können Sie die unten stehenden HTML-Codes
            ebenfalls nach Bedarf in Ihrer Webseite einbinden.</p>

        <pre class="language-html">
        <code class="language-html">
            &lt;script&gt;
            // Define the domain variable here
            var loadbalancerDomain = &quot;{$spHostnameLoadbalancer}&quot;;
            &lt;/script&gt;
            &lt;script src=&quot;https://{$spHostnameLoadbalancer}/scripts/js/details.min.js&quot;&gt;&lt;/script&gt;
        </code>
        </pre>

    </div>
</div>

<!-- now_playing, AUTOMATIC-->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Aktueller Inhalt (Moderator, Live & AutoDJ)<br />
                <small>Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.</small>
            </h3>
        </div>
    </div>
    <div class="card-body">

        <h4>Hinweis</h4>
        <p>Dieses Beispiel wird im folgender Technischer Reihenfolge abgerufen: /djXX --> /stream_live --> /autodj</p>

        <div class="row">
            <div class="col-md-6">

                <h4>Song (Artist & Titel)</h4>
                <span class="spcasteu_streaminfo" data-type="live_dj_title" data-fallback="mounts./stream_live.metadata.now_playing" data-fallback-last="mounts./autodj.metadata.now_playing"
                    data-error="Error loading song text">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;live_dj_title&quot; data-fallback=&quot;mounts./stream_live.metadata.now_playing&quot; data-fallback-last=&quot;mounts./autodj.metadata.now_playing&quot; data-error=&quot;Error loading song text&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

    </div>
</div>

<!-- now_playing, LIVE -->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Aktueller Inhalt (Live)<br />
                <small>Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.</small>
            </h3>
        </div>
    </div>
    <div class="card-body">

        <h4>Hinweis</h4>
        <p>Dieses Beispiel wird im folgenden Technischen Format: /stream_live</p>

        <div class="row">
            <div class="col-md-6">

                <h4>Song (Artist & Titel)</h4>
                <span class="spcasteu_streaminfo" data-type="mounts./stream_live.metadata.now_playing" data-error="Aktuell sendet hier niemand Live...">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;mounts./stream_live.metadata.now_playing&quot; data-error=&quot;Aktuell sendet hier niemand Live...&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

    </div>
</div>

<!-- now_playing, AUTODJ -->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Aktueller Inhalt (AutoDJ)<br />
                <small>Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.</small>
            </h3>
        </div>
    </div>
    <div class="card-body">

        <h4>Hinweis</h4>
        <p>Dieses Beispiel wird im folgenden Technischen Format: /autodj</p>

        <div class="row">
            <div class="col-md-6">

                <h4>Playliste</h4>
                <span class="spcasteu_streaminfo" data-type="now_playing.playlist" data-error="Error loading playlist">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;now_playing.playlist&quot; data-error=&quot;Error loading playlist&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Song (Artist & Titel)</h4>
                <span class="spcasteu_streaminfo" data-type="now_playing.song.text" data-error="Error loading song text">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;now_playing.song.text&quot; data-error=&quot;Error loading song text&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Song (Artist)</h4>
                <span class="spcasteu_streaminfo" data-type="now_playing.song.artist" data-error="Error loading song artist">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;now_playing.song.artist&quot; data-error=&quot;Error loading song artist&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Song (Titel)</h4>
                <span class="spcasteu_streaminfo" data-type="now_playing.song.title" data-error="Error loading song title">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;now_playing.song.title&quot; data-error=&quot;Error loading song title&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Song (Album)</h4>
                <span class="spcasteu_streaminfo" data-type="now_playing.song.album" data-error="Error loading song album">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;now_playing.song.album&quot; data-error=&quot;Error loading song album&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

    </div>
</div>

<!-- playing_next -->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Nächster Inhalt<br />
                <small>Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.</small>
            </h3>
        </div>
    </div>
    <div class="card-body">

        <div class="alert alert-custom alert-outline-dark fade show mb-5" role="alert">
            <div class="alert-icon">
                <i class="flaticon-info"></i>
            </div>
            <div class="alert-text">
                Es sollte selbstverständlich sein, dass der nachfolgende Inhalt nur innerhalb des AutoDJ (Extern) ermittelt werden kann. Wenn Sie live sind, funktioniert dieser Bereich nicht und zeigt
                den Inhalt des AutoDJ.
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Playliste</h4>
                <span class="spcasteu_streaminfo" data-type="playing_next.playlist" data-error="Error loading playlist">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;playing_next.playlist&quot; data-error=&quot;Error loading playlist&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Song (Artist & Titel)</h4>
                <span class="spcasteu_streaminfo" data-type="playing_next.song.text" data-error="Error loading song text">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;playing_next.song.text&quot; data-error=&quot;Error loading song text&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Song (Artist)</h4>
                <span class="spcasteu_streaminfo" data-type="playing_next.song.artist" data-error="Error loading song artist">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;playing_next.song.artist&quot; data-error=&quot;Error loading song artist&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Song (Titel)</h4>
                <span class="spcasteu_streaminfo" data-type="playing_next.song.title" data-error="Error loading song title">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;playing_next.song.title&quot; data-error=&quot;Error loading song title&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Song (Album)</h4>
                <span class="spcasteu_streaminfo" data-type="playing_next.song.album" data-error="Error loading song album">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;playing_next.song.album&quot; data-error=&quot;Error loading song album&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

    </div>
</div>

<!-- listeners -->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Zuhörerausgabe<br />
                <small>Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.</small>
            </h3>
        </div>
    </div>
    <div class="card-body">

        <div class="row">
            <div class="col-md-6">

                <h4>Insgesamt (/stream)</h4>
                <span class="spcasteu_streaminfo" data-type="total_listener_count" data-error="0">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;total_listener_count&quot; data-error=&quot;0&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="alert alert-custom alert-outline-dark fade show mb-5" role="alert">
            <div class="alert-icon">
                <i class="flaticon-info"></i>
            </div>
            <div class="alert-text">
                Die folgenden Ausgaben zeigen die Zuhörer aufgeteilt auf einzelne Mountpoints. Es ist unüblich, dass sich Nutzer direkt auf den Mountpoints "/stream_live" oder "/autodj" befinden. Der
                Streamserver verschiebt Hörer automatisch zwischen Livesendungen und AutoDJ. Wenn sich Nutzer in der AutoDJ Auflistung befinden, während Sie live senden, ist es durchaus möglich, dass
                der Nutzer gezielt Ihr AutoDJ-Programm aufgerufen hat.
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>/stream_live</h4>
                <span class="spcasteu_streaminfo" data-type="mounts./stream_live.listener_count" data-error="0">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;mounts./stream_live.listener_count&quot; data-error=&quot;0&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>/autodj</h4>
                <span class="spcasteu_streaminfo" data-type="mounts./autodj.listener_count" data-error="0">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;mounts./autodj.listener_count&quot; data-error=&quot;0&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>/stream256</h4>
                <span class="spcasteu_streaminfo" data-type="mounts./stream256.listener_count" data-error="0">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;mounts./stream256.listener_count&quot; data-error=&quot;0&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>/stream192</h4>
                <span class="spcasteu_streaminfo" data-type="mounts./stream192.listener_count" data-error="0">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;mounts./stream192.listener_count&quot; data-error=&quot;0&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>/stream128</h4>
                <span class="spcasteu_streaminfo" data-type="mounts./stream128.listener_count" data-error="0">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;mounts./stream128.listener_count&quot; data-error=&quot;0&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>/stream96</h4>
                <span class="spcasteu_streaminfo" data-type="mounts./stream96.listener_count" data-error="0">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;mounts./stream96.listener_count&quot; data-error=&quot;0&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>/stream64</h4>
                <span class="spcasteu_streaminfo" data-type="mounts./stream64.listener_count" data-error="0">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;mounts./stream64.listener_count&quot; data-error=&quot;0&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>/stream48</h4>
                <span class="spcasteu_streaminfo" data-type="mounts./stream48.listener_count" data-error="0">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;mounts./stream48.listener_count&quot; data-error=&quot;0&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>/stream32</h4>
                <span class="spcasteu_streaminfo" data-type="mounts./stream32.listener_count" data-error="0">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;mounts./stream32.listener_count&quot; data-error=&quot;0&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

    </div>
</div>

<!-- moderator - customer area -->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zu den Moderatordetails"
                    data-content="Diese Abrufmechanik ist bezieht sich auf die Moderatorendaten, die unter der Zugangsverwaltung im Kundencenter gespeichert sind.">
                </i> Moderatordetails (Kundencenter)<br />
                <small>Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.</small>
            </h3>
        </div>
    </div>
    <div class="card-body">

        <div class="alert alert-custom alert-outline-dark fade show mb-5" role="alert">
            <div class="alert-icon">
                <i class="flaticon-info"></i>
            </div>
            <div class="alert-text">
                Folgendes Beispiel zeigt Ihnen, wie Sie den Namen und das Bild des aktuell sendenden Moderators auf Ihrer Webseite ausgeben können.<br />
                Über "data-error" können Sie ein alternatives Bild angeben, falls es zu einem Fehler kommt oder Sie kein Bild in der Verwaltung hinterlegt haben.<br />
                Über "data-imgwidth" können Sie eine alternative Bildgröße angeben. Der Standard ist auf 64px eingestellt.
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Moderator: Name</h4>
                <span class="spcasteu_streaminfo" data-type="live_dj_name" data-error="No Moderator is Online">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;live_dj_name&quot; data-error=&quot;No Moderator is Online&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Moderator: Bild</h4>
                <span class="spcasteu_streaminfo" data-type="live_dj_image" data-imgwidth="64" data-error="https://sp.radio.fm/images/no_moderator.png">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;live_dj_image&quot; data-imgwidth=&quot;64&quot; data-error=&quot;https://sp.radio.fm/images/no_moderator.png&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <br />

        <div class="alert alert-custom alert-outline-dark fade show mb-5" role="alert">
            <div class="alert-icon">
                <i class="flaticon-info"></i>
            </div>
            <div class="alert-text">
                Alternativ haben Sie die Möglichkeit, auch einen spezifischen Moderator für Ihre Webseite auszuwählen. Sie können somit auf alle 50 Moderatoren-Accounts einzeln
                zugreifen. Sie müssen lediglich die richtige ID des Moderators, den Sie ausgeben möchten, setzen.
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Moderator ID 1: Name</h4>
                <span class="spcasteu_streaminfo" data-type="dj_name_1" data-error="Error loading dj-name">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;dj_name_1&quot; data-error=&quot;Error loading dj-name&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Moderator ID 1: Bild</h4>
                <span class="spcasteu_streaminfo" data-type="dj_image_1" data-imgwidth="64" data-error="https://sp.radio.fm/images/no_moderator.png">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;dj_image_1&quot; data-imgwidth=&quot;64&quot; data-error=&quot;https://sp.radio.fm/images/no_moderator.png&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

    </div>
</div>

<!-- moderator - autodj -->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zu den Moderatordetails"
                    data-content="Diese Abrufmechanik ist bezieht sich auf die Moderatorendaten, die unter den DJ-Accounts im AutoDJ angelegt wurden.">
                </i> Moderatordetails (AutoDJ)<br />
                <small>Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.</small>
            </h3>
        </div>
    </div>
    <div class="card-body">

        <div class="alert alert-custom alert-outline-dark fade show mb-5" role="alert">
            <div class="alert-icon">
                <i class="flaticon-info"></i>
            </div>
            <div class="alert-text">
                Folgendes Beispiel zeigt Ihnen, wie Sie den Namen des aktuell sendenden Moderators auf Ihrer Webseite ausgeben können.
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">

                <h4>Moderator: Name</h4>
                <span class="spcasteu_streaminfo" data-type="live.streamer_name" data-error="No Moderator is Online">Loading...</span>

            </div>

            <div class="col-md-6">
                <h3>HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                   &lt;span class=&quot;spcasteu_streaminfo&quot; data-type=&quot;live.streamer_name&quot; data-error=&quot;No Moderator is Online&quot;&gt;Loading...&lt;/span&gt;
                </code>
                </pre>
            </div>
        </div>

    </div>
</div>