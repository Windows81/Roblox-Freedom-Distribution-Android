.class public Lcom/roblox/platform/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/platform/e$b;,
        Lcom/roblox/platform/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/roblox/platform/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/roblox/platform/e$1;

    invoke-direct {v0}, Lcom/roblox/platform/e$1;-><init>()V

    sput-object v0, Lcom/roblox/platform/e;->a:Lcom/roblox/platform/e$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 29
    invoke-static {p0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/platform/e$b;->a(I)Lcom/roblox/platform/e$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/roblox/platform/e$b;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Lcom/roblox/platform/e$b;
    .locals 1

    .line 49
    sget-object v0, Lcom/roblox/platform/e;->a:Lcom/roblox/platform/e$a;

    invoke-interface {v0, p0}, Lcom/roblox/platform/e$a;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/platform/e$b;->a(I)Lcom/roblox/platform/e$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/roblox/platform/e$b;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/platform/e$b;->a(I)Lcom/roblox/platform/e$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/roblox/platform/e$b;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 41
    invoke-static {p0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/platform/e$b;->a(I)Lcom/roblox/platform/e$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/roblox/platform/e$b;->d(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/platform/e$b;->a(I)Lcom/roblox/platform/e$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/roblox/platform/e$b;->e(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
