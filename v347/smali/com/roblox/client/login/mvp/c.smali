.class Lcom/roblox/client/login/mvp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/roblox/client/login/mvp/c;->b:Ljava/lang/String;

    .line 28
    const/16 v0, -0x7da

    iput v0, p0, Lcom/roblox/client/login/mvp/c;->c:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/login/mvp/c;->d:I

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/roblox/client/login/mvp/c;->b:Ljava/lang/String;

    .line 28
    const/16 v0, -0x7da

    iput v0, p0, Lcom/roblox/client/login/mvp/c;->c:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/login/mvp/c;->d:I

    .line 32
    iput-object p1, p0, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/roblox/client/login/mvp/c;->b:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/roblox/client/login/mvp/c;->c:I

    .line 35
    return-void
.end method
