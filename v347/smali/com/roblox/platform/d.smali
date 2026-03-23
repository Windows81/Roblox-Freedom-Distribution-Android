.class public Lcom/roblox/platform/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/platform/d$b;,
        Lcom/roblox/platform/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/roblox/platform/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/roblox/platform/d$1;

    invoke-direct {v0}, Lcom/roblox/platform/d$1;-><init>()V

    sput-object v0, Lcom/roblox/platform/d;->a:Lcom/roblox/platform/d$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 29
    invoke-static {p0}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/d$b;->a(I)Lcom/roblox/platform/d$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/platform/d$b;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/roblox/platform/d$b;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/roblox/platform/d;->a:Lcom/roblox/platform/d$a;

    invoke-interface {v0, p0}, Lcom/roblox/platform/d$a;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 33
    invoke-static {p0}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/d$b;->a(I)Lcom/roblox/platform/d$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/platform/d$b;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 37
    invoke-static {p0}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/d$b;->a(I)Lcom/roblox/platform/d$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/platform/d$b;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 41
    invoke-static {p0}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/d$b;->a(I)Lcom/roblox/platform/d$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/platform/d$b;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 45
    invoke-static {p0}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/d$b;->a(I)Lcom/roblox/platform/d$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/platform/d$b;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
