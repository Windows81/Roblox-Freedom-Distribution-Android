.class public Lcom/roblox/client/signup/multiscreen/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/a/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/roblox/client/signup/multiscreen/a/b$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/b$a;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/a/b;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/a/b;->b:Lcom/roblox/client/signup/multiscreen/a/b$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/roblox/client/signup/multiscreen/a/b;
    .locals 2

    .line 21
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/b;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/b$a;->a:Lcom/roblox/client/signup/multiscreen/a/b$a;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/signup/multiscreen/a/b;-><init>(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/b$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/b$a;)Lcom/roblox/client/signup/multiscreen/a/b;
    .locals 1

    .line 25
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/b;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/signup/multiscreen/a/b;-><init>(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/b$a;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/a/b;->b:Lcom/roblox/client/signup/multiscreen/a/b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
