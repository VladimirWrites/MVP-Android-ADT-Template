<?xml version="1.0" encoding="utf-8"?>
<#if databinding>
<layout 
	xmlns:android="http://schemas.android.com/apk/res/android">
    <FrameLayout
        android:id="@+id/contentFrame"
        android:layout_width="match_parent"
        android:layout_height="match_parent">
    </FrameLayout>
</layout>
<#else>
<FrameLayout
	xmlns:android="http://schemas.android.com/apk/res/android">
	android:id="@+id/contentFrame"
	android:layout_width="match_parent"
	android:layout_height="match_parent">
</FrameLayout>
</#if>