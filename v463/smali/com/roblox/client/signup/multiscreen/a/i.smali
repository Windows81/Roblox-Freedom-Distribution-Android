.class public Lcom/roblox/client/signup/multiscreen/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/a/i$a;,
        Lcom/roblox/client/signup/multiscreen/a/i$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/roblox/client/signup/multiscreen/a/i$b;

.field public final b:Lcom/roblox/client/signup/multiscreen/a/i$a;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/signup/multiscreen/a/i$b;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/i$a;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/a/i;->a:Lcom/roblox/client/signup/multiscreen/a/i$b;

    .line 55
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/a/i;->c:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/a/i;->b:Lcom/roblox/client/signup/multiscreen/a/i$a;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/a/i;->a:Lcom/roblox/client/signup/multiscreen/a/i$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". credentialValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
