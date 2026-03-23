.class public final Lc/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/c$a;
    }
.end annotation


# instance fields
.field public final a:Lc/aa;

.field public final b:Lc/ac;


# direct methods
.method private constructor <init>(Lc/aa;Lc/ac;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lc/a/a/c;->a:Lc/aa;

    .line 58
    iput-object p2, p0, Lc/a/a/c;->b:Lc/ac;

    return-void
.end method

.method synthetic constructor <init>(Lc/aa;Lc/ac;Lc/a/a/c$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lc/a/a/c;-><init>(Lc/aa;Lc/ac;)V

    return-void
.end method

.method public static a(Lc/ac;Lc/aa;)Z
    .locals 3

    .line 65
    invoke-virtual {p0}, Lc/ac;->b()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_2

    const/16 v1, 0x194

    if-eq v0, v1, :cond_2

    const/16 v1, 0x195

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v0, "Expires"

    .line 85
    invoke-virtual {p0, v0}, Lc/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lc/ac;->i()Lc/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 87
    invoke-virtual {p0}, Lc/ac;->i()Lc/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lc/ac;->i()Lc/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    .line 99
    :cond_2
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lc/ac;->i()Lc/d;

    move-result-object p0

    invoke-virtual {p0}, Lc/d;->b()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lc/aa;->f()Lc/d;

    move-result-object p0

    invoke-virtual {p0}, Lc/d;->b()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
