<template>
    <div class="mainDiv" id="tpSelect">
        <div>
            <div id="imgLogoContainer">
                <img id="imgLogo" src="https://media.discordapp.net/attachments/940595394537201704/942024245389705236/rzhess2.png" alt="">
            </div>
            <h1 style="text-align: center; color:red;">Fast <span style="color:white;">Teleportation</span></h1>
            <div class="imgList">
                <a v-for="v in locations" :key="v" @click="tpTo(v)" class="imgDiv">
                    <img :src="v.img" alt=""> <br>
                    <span class="imgTitle">{{ v.title }}</span> <br>
                    <span class="imgDesc">{{ v.descrption }}</span>
                </a>
            </div>

            <hr style="margin-top:25px">

            <h1 style="text-align: center; color:red;">Private <span style="color:white;">World</span></h1>
            <div style="display:flex; justify-content:center; margin-bottom: 25px;">
                <img id="bigImage" src="https://api.arretsurimages.net/api/public/media/nouveau-media-14450/action/show?format=public&t=2017-10-24T04:18:51+02:00" alt=""> <br>
            </div>
        </div>
    </div>
</template>

<script>
    import Nui from '../utils/Nui'

    export default {
        name: 'TPUi',
        data() {
            return {
                locations: [
                ]
            }
        },

        methods: {
            tpTo: function(v) {
               Nui.send("RZUi:TPToLoc", v)
            }
        },

        setup () {
            return {
                messageListener: null
            }
        },

        mounted () {
            this.messageListener = window.addEventListener("message", e => {
                const item = e.data

                if (item.event == "LOCATIONS_DATA") {
                    this.locations = item.data
                }
            })

            document.onkeydown = function(evt) {
                evt = evt || window.event;
                var isEscape = false;
                if ("key" in evt) {
                    isEscape = (evt.key === "Escape" || evt.key === "Esc");
                } else {
                    isEscape = (evt.keyCode === 27);
                }
                if (isEscape) {
                    Nui.send("RZUi:escapeTPUi")
                }
            };
        },
        
        unmounted () {
            window.removeEventListener("message", this.messageListener)
        }
    }
</script>

<style>
.mainDiv {
    transition: 0.5s;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 100px;
    padding-top: 300px;
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

.mainDiv>div {
    background-color: rgba(0, 0, 0, 0.712);
    color: white;
    padding: 10px;
    width: 1000px;
    border-radius: 15px;
    /* border: 2px lightgray solid; */
}

.imgList {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}

.imgDiv {
    text-align: center;
    width: 200px;
    margin: 5px;
    transition: 0.5s;
    cursor: pointer;
}

.imgDiv>img {
    border-radius: 20px;
    width: 175px;
    height: 125px;
    transition: 0.5s
}

.imgDiv>img:hover {
    transform: scale(1.15);
}

.imgDiv:hover {
    margin: 5px 40px;
}

.imgTitle {
    font-size: 150%;
}

#imgLogo {
    width: 300px;
    height: 100px;
    margin-top: -60px;
    margin-bottom: -30px;
    border-radius: 15px;
}

#imgLogoContainer {
    display: flex;
    width: 100%;
    justify-content: center;
}

#bigImage {
    width: 500px;
    height: 200px;
    border-radius: 15px;
    transition: 0.5s
}

#bigImage:hover {
    transform: scale(1.10);
}

a {
    text-decoration: none;
    color: white
}
</style>