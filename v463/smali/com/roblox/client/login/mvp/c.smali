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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/roblox/client/login/mvp/c;->b:Ljava/lang/String;

    const/16 v0, -0x7da

    .line 37
    iput v0, p0, Lcom/roblox/client/login/mvp/c;->c:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/roblox/client/login/mvp/c;->d:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/roblox/client/login/mvp/c;->b:Ljava/lang/String;

    const/16 v0, -0x7da

    .line 37
    iput v0, p0, Lcom/roblox/client/login/mvp/c;->c:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/roblox/client/login/mvp/c;->d:I

    .line 41
    iput-object p1, p0, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/roblox/client/login/mvp/c;->b:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/roblox/client/login/mvp/c;->c:I

    return-void
.end method
