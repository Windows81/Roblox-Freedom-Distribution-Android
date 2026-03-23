.class public Lcom/roblox/client/h/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/h/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/roblox/client/h/n$b;->a:J

    .line 28
    iput-object p3, p0, Lcom/roblox/client/h/n$b;->b:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/roblox/client/h/n$b;->c:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/roblox/client/h/n$b;->d:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/roblox/client/h/n$b;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/roblox/client/h/n$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/client/h/n$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/roblox/client/h/n$b;->d:Ljava/lang/String;

    return-object v0
.end method
