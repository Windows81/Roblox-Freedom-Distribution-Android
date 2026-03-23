.class public Landroid/support/v4/app/z$b;
.super Landroid/support/v4/app/z$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1972
    invoke-direct {p0}, Landroid/support/v4/app/z$d;-><init>()V

    .line 1973
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$b;
    .locals 1

    .prologue
    .line 2002
    invoke-static {p1}, Landroid/support/v4/app/z$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z$b;->e:Ljava/lang/CharSequence;

    .line 2003
    return-object p0
.end method

.method public a(Landroid/support/v4/app/y;)V
    .locals 2

    .prologue
    .line 2012
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2013
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2014
    invoke-interface {p1}, Landroid/support/v4/app/y;->a()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v1, p0, Landroid/support/v4/app/z$b;->b:Ljava/lang/CharSequence;

    .line 2015
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/z$b;->e:Ljava/lang/CharSequence;

    .line 2016
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 2017
    iget-boolean v1, p0, Landroid/support/v4/app/z$b;->d:Z

    if-eqz v1, :cond_0

    .line 2018
    iget-object v1, p0, Landroid/support/v4/app/z$b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 2021
    :cond_0
    return-void
.end method
