.class public Lcom/roblox/client/signup/multiscreen/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/a/g$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/roblox/client/signup/multiscreen/a/g$a;


# direct methods
.method private constructor <init>(Lcom/roblox/client/signup/multiscreen/a/g$a;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/a/g;->a:Lcom/roblox/client/signup/multiscreen/a/g$a;

    return-void
.end method

.method public static a()Lcom/roblox/client/signup/multiscreen/a/g;
    .locals 2

    .line 26
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->a:Lcom/roblox/client/signup/multiscreen/a/g$a;

    invoke-direct {v0, v1}, Lcom/roblox/client/signup/multiscreen/a/g;-><init>(Lcom/roblox/client/signup/multiscreen/a/g$a;)V

    return-object v0
.end method

.method public static a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;
    .locals 1

    .line 30
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/a/g;-><init>(Lcom/roblox/client/signup/multiscreen/a/g$a;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/a/g;->a:Lcom/roblox/client/signup/multiscreen/a/g$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
