.class public Lcom/roblox/client/realtime/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/realtime/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p2, "UserThemeTypeChangeNotification"

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Lcom/roblox/client/ab/b;

    invoke-direct {p1}, Lcom/roblox/client/ab/b;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/roblox/client/ab/b;->a(Lcom/roblox/client/ab/b$a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
