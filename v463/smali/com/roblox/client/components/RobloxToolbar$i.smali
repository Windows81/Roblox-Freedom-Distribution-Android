.class public Lcom/roblox/client/components/RobloxToolbar$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/RobloxToolbar$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/components/RobloxToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/ab/e;)I
    .locals 1

    .line 108
    sget-object v0, Lcom/roblox/client/components/RobloxToolbar$1;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 111
    sget p1, Lcom/roblox/client/o$c;->RbxBlue3:I

    return p1

    .line 109
    :cond_0
    sget p1, Lcom/roblox/client/o$c;->lightThemeToolbar:I

    return p1

    .line 110
    :cond_1
    sget p1, Lcom/roblox/client/o$c;->darkThemeToolbar:I

    return p1
.end method

.method public b(Lcom/roblox/client/ab/e;)I
    .locals 1

    .line 118
    sget-object v0, Lcom/roblox/client/components/RobloxToolbar$1;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 121
    sget p1, Lcom/roblox/client/o$c;->white:I

    return p1

    .line 119
    :cond_0
    sget p1, Lcom/roblox/client/o$c;->darkThemeToolbar:I

    return p1
.end method
