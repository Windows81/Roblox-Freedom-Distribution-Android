.class public Lcom/roblox/client/signup/multiscreen/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/a/f$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/roblox/client/signup/multiscreen/a/e;

.field public final b:Lcom/roblox/client/signup/multiscreen/a/f$a;


# direct methods
.method private constructor <init>(Lcom/roblox/client/signup/multiscreen/a/e;Lcom/roblox/client/signup/multiscreen/a/f$a;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/a/f;->a:Lcom/roblox/client/signup/multiscreen/a/e;

    .line 20
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/a/f;->b:Lcom/roblox/client/signup/multiscreen/a/f$a;

    return-void
.end method

.method public static a(Lcom/roblox/client/signup/multiscreen/a/e;)Lcom/roblox/client/signup/multiscreen/a/f;
    .locals 2

    .line 24
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/f;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/f$a;->a:Lcom/roblox/client/signup/multiscreen/a/f$a;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/signup/multiscreen/a/f;-><init>(Lcom/roblox/client/signup/multiscreen/a/e;Lcom/roblox/client/signup/multiscreen/a/f$a;)V

    return-object v0
.end method

.method public static a(Lcom/roblox/client/signup/multiscreen/a/e;Lcom/roblox/client/signup/multiscreen/a/f$a;)Lcom/roblox/client/signup/multiscreen/a/f;
    .locals 1

    .line 28
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/f;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/signup/multiscreen/a/f;-><init>(Lcom/roblox/client/signup/multiscreen/a/e;Lcom/roblox/client/signup/multiscreen/a/f$a;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/a/f;->a:Lcom/roblox/client/signup/multiscreen/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/a/f;->b:Lcom/roblox/client/signup/multiscreen/a/f$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
