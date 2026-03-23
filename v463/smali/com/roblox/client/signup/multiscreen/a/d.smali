.class public Lcom/roblox/client/signup/multiscreen/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/a/d$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/roblox/client/signup/multiscreen/a/d$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/a/d;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/a/d;->b:Lcom/roblox/client/signup/multiscreen/a/d$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;
    .locals 1

    .line 29
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/d;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/signup/multiscreen/a/d;-><init>(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;
    .locals 1

    .line 33
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/d;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/signup/multiscreen/a/d;-><init>(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/a/d;->b:Lcom/roblox/client/signup/multiscreen/a/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
