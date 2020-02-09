---
layout: post
title: 2020 Android Test Devices
author: Matthew
tags: dev, development, android, phone, mobile, app, game, hardware, guide, tutorial, loam, post, blog, pixel, google, samsung, zte
---

If you're testing a mobile game or app, making sure it works on different devices is important. This guide aims to recommend a few phones at various performance levels to help test what's out there, based on the distribution of devices in the US at the start of 2020.

If you own an android phone already, it likely fills one of the existing tiers on this list. If you don't mind using your own phone for that tier, then you can skip out on getting one for testing! Often, there are used versions of the phones listed below on eBay or other sites that sell used hardware as well.  

## Low-End Android Phone
**About this tier**

This is your stress-test. This is the worst case scenario. The goal here is to see what your application runs like on some of the most absolutely basic hardware out there. The target for this tier is a phone that has some of the worst specs for the year it came out - If you can get your app to a playable state (Not even amazing, but just a modest framerate that isn't too bad) on a device like this, then you can feel confident that it'll run nicely on all sorts of different hardware! Often times, the criteria for this tier is generally *'Cheapest phone I could find at a supermarket that runs any level of android I can deploy to'*. It's not unreasonable that a device with these specs would be in use though, especially globally, so getting a feel for how your application performs in situations like these is nice. The resolution is usually a lot lower than more modern devices as well, so it really tests how well your UI scales down.

**Example Model**

ZTE Blade T2 (Z559DL)

**Specs**

- OS: Android 8.1 Oreo
- CPU: 1.1 GHz Quad-core, ARM Cortex-A7
- GPU: Qualcomm Adreno 304
- RAM: 2 GB
- Storage: 16 GB, Micro SD Expandable up to 256 GB
- Screen: \~16x9, 480x854, 5", \~196 ppi, Multitouch
- Cameras: 5 MP rear camera, 2 MP selfie cam
- Battery: 2200 mAh, Replaceable / Removable
- Charging: MicroUSB 2.0, Comes with transfer-enabled USB cable

**Price**

$30-45 - No activation or monthly plan required despite it being a prepaid phone. This phone generally sees newer models get released as time goes on, so look for similar devices at the $40 tier if this one isn't available!

**Why This Phone?**

The screen is pretty abysmal and the specs are, while bad, still a reasonable recycling of some older tech and lower spec hardware from a few years ago and it's a one-time cost. It offers android 8.1. It's also quite cheap with a slightly obscure but standard aspect resolution, plus it's a realistic low end prepaid phone. For ease of development, the micro-SD card is nice, and the removable back makes it easy to access the microSD slot.

## Middling Android Phone

The goal with this is that you're getting something supremely average, something that you can figure at least 2 in 3 people with a smartphone has in terms of specs. You want to decide on a phone that is top "bang for your buck" in terms of features - place yourself in the shoes of someone who wants to manage the cost of a phone with something prepaid, but with a device that still feels good to use and can either be cheaply leased or reasonably bought outright. In general, a phone in this tier should be comparable to a high-end device from 4 to 5 years prior that a user might be hanging onto! 

**Example Model**

Samsung Galaxy J3 Orbit

**Specs**

- OS: Android 8.0 Oreo
- CPU: Octa-core: Dual-core 1.35 GHz Cortex-A73 & Hexa-core 1.35 GHz Cortex-A53
- GPU: ARM Mali-G71 
- RAM: 2 GB
- Storage: 16 GB, Micro SD Expandable up to 256 GB
- Screen: 16x9, 720x1280, 5", \~294 ppi, Multitouch
- Cameras: 8 MP rear camera, 5 MP selfie cam
- Battery: 2600 mAh, Replaceable / Removable
- Charging: MicroUSB 2.0, Comes with transfer-enabled USB cable

**Price**

$70-110 - No activation or monthly plan required despite it being a prepaid phone. This tier doesn't tend to get updated as often as low end devices, but over time tends to get new devices. When this happens, the old ones will often go on sale.

**Why This Phone?**

While there are other phones at this price point and with similar specs, it's worth grabbing an android phone from one of the most popular phone manufacturers out there - Samsung. There are often some additional apps and settings, and Samsung phones tend to swap the app view and back button for the android nav bar, which can be good for helping ensure that even in other configurations, your app feels good.

## Higher-End Android Phone

Sometimes you're not at the point where you want to worry about performance, and you're just doing something like proving out a concept. This tier should be able to, without issue, run your app or game and you should feel confident in its ability to continue to be able to demo your game even at a convention or similar. This is a bit of an investment by comparison to the other tiers generally, and so getting at least a cheap case for this tier could be a good choice to avoid damage. During standard development, this is the phone I default to. The turnaround time of deploying to it tends to be the smallest, and even 5 seconds saved every test can really help preserve your sanity. Working with the 'latest and greatest' often brings with it some new development features too, especially when it comes to debugging, that you may be able to make use of as well.

**Example Model**

Google Pixel 3 64GB

**Specs**

- OS: Android 9.0 Pie, Upgradeable to 10.0
- CPU: Octa-core: Quad 2.5 GHz Kryo 385 Gold & Quad 1.6 GHz Kryo 385 Silver
- GPU: Adreno 630
- RAM: 4 GB
- Storage: 64 GB, not expandable. 
- Screen: 18x9, 1080x2160, 5.5", \~443 ppi
- Cameras: 12.2 MP rear camera, 8MP wide selfie cam, 8MP ultra-wide selfie cam
- Battery: 2915 mAh, not replaceable
- Charging: USB 3.0 C, comes with transfer-enabled USB cable, QI wireless charging

**Price**

$250-400, depending on if you get a new or refurbished version. The 'not pink' color tends to be a bit cheaper than the others by around $10. No activation required, although prepaid plans are generally not provided out of the box but carrier specific plans often work with it.

**Why This Phone?**

The pixel runs stock android, and is widely regarded as one of the best phones Google has made. It often receives updates for newer Google features, and will likely continue to receives them until around 2021 or 2022. Android 10 along with the new gesture navigation system is an option as well (may require an update first to access) which further allows you to test more modern navigation trends. The hardware is respectable and while not chart-topping in any aspect is a very solid device at the time of writing, and will continue to be for a few years. In addition, if your app requires camera clarity or features, this phone has a stellar camera!

## Some Tips and Tricks

Managing all of the devices you have gets harder the more you have, and if you've got three dedicated development devices, well, things might get a bit messy; Wires everywhere and confusion about which is plugged in, etc, software differences, and funky default settings. Well, I've personally suffered a bit more than I'd care to admit trying to make sure I'm deploying to the right device, and swapping them all manually until I figured out what's what. 

**Organizing the Hardware**

Sometimes, different phones have different cable requirements. It's not too often for android phones, especially in 2020, but there are situations where occasionally the cable has to be a 'certified cable' or whatever in order to charge the phone or transfer data. To help solve this, I usually take my trusty label maker and mark each phone, each charging base, and each data/sync cable. I then rename the phone in android settings to the name I've labeled it as to help keep track of which one is for which.

**Wrangling the Software**

Before anything, you'll have to put all the devices in developer mode. At the time of writing (and I suspect for a good while), the way you do this is by heading into the system settings, going to device information, and tapping on the phone version 7 times. You'll probably get a little popup with a countdown after a few taps!

If you get a bit creative, you don't need to unplug and re-plug every phone every time to make sure you're debugging/deploying your software correctly. If you get yourself a USB Hub with on and off switches, and connect all your devices to that, you can turn them on and off to swap which device shows up. While some deployment techniques let you specify the device, I've found the physical disconnect of the switch much easier. 

Comparing on different devices can be a bit frustrating with default power settings, so I often make a point of changing the screen timeout setting to 30 minutes. This is because while you can turn it permanently on in the developer settings, I sometimes forget to turn them off, so it's nice to at least have some level of timeout on it.

Finally, UI and interaction testing. Mobile inputs are always a bit wishy washy, and it can be hard to know what went wrong sometimes when hopping between devices - did you misclick, not input how you thought, or drag for too far? Well, a good way to help identify what happened is to turn on the debugging tools for tap/input positions, and for input trails in the developer settings! It can help show the gesture and input locations a lot better, which can speed up debugging.

## Final Thoughts

This isn't designed to be a definitive guide, but more of a couple recommended tiers of devices to test your applications on, and some examples of a device at each tier. With time, the recommendations for the 2020-era hardware in this guide will become dated, but the idea of having a test device in each of the three tiers will continue to be applicable!