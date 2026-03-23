.class public Lcom/roblox/client/t/g;
.super Lcom/roblox/client/t/h;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/v;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/roblox/client/t/h;-><init>(Lcom/roblox/client/v;)V

    .line 11
    invoke-direct {p0, p2}, Lcom/roblox/client/t/g;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/roblox/client/t/g;->a:I

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 4

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "players"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "player"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "groups"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    .line 23
    invoke-super {p0}, Lcom/roblox/client/t/h;->b()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x5

    return p1

    :cond_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x49c2262c -> :sswitch_3
        -0x3ac1651f -> :sswitch_2
        -0x1d6b3e4e -> :sswitch_1
        0x5e0f67f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/roblox/client/t/g;->a:I

    return v0
.end method
