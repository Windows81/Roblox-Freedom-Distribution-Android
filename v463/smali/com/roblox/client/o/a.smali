.class public Lcom/roblox/client/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/datastructures/c;


# static fields
.field private static a:Ljava/lang/String; = "RbxBlockingQueueItem"


# instance fields
.field private b:Ljava/lang/StringBuilder;

.field private c:Ljava/lang/StringBuilder;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/roblox/client/o/a;->b:Ljava/lang/StringBuilder;

    .line 19
    iput-object v0, p0, Lcom/roblox/client/o/a;->c:Ljava/lang/StringBuilder;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/roblox/client/o/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/roblox/client/o/a;->e:Z

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/roblox/client/o/a;->f:J

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/o/a;->g:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/roblox/client/o/a;->d:Ljava/lang/String;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/o/a;->c:Ljava/lang/StringBuilder;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/o/a;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ","

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private d()J
    .locals 4

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/roblox/client/o/a;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/roblox/client/o/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "i,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Ljava/lang/String;J)Lcom/roblox/client/o/a;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/roblox/client/o/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "i,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/roblox/client/o/a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string v1, "\\ "

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    const-string v1, "\\,"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/roblox/client/o/a;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/roblox/client/o/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Z)Lcom/roblox/client/o/a;
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/roblox/client/o/a;->e:Z

    return-object p0
.end method

.method public a(Lcom/roblox/client/datastructures/a;)V
    .locals 5

    .line 83
    iget-boolean v0, p0, Lcom/roblox/client/o/a;->e:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/roblox/client/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1}, Lcom/roblox/client/datastructures/a;->a()V

    :cond_0
    return-void

    .line 92
    :cond_1
    iget-wide v0, p0, Lcom/roblox/client/o/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/roblox/client/o/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/o/a;->f:J

    .line 98
    :cond_2
    new-instance v0, Lcom/roblox/client/aa/b;

    invoke-static {}, Lcom/roblox/client/b;->t()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {}, Lcom/roblox/client/b;->u()I

    move-result v2

    invoke-virtual {p0}, Lcom/roblox/client/o/a;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/roblox/client/o/a$1;

    invoke-direct {v4, p0, p1}, Lcom/roblox/client/o/a$1;-><init>(Lcom/roblox/client/o/a;Lcom/roblox/client/datastructures/a;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/roblox/client/aa/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/roblox/client/aa/a;)V

    .line 108
    invoke-virtual {v0}, Lcom/roblox/client/aa/b;->a()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 165
    invoke-static {}, Lcom/roblox/client/b;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lcom/roblox/client/datastructures/c;
    .locals 1

    .line 77
    invoke-static {}, Lcom/roblox/client/o/b;->b()Lcom/roblox/client/o/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/o/b;->a(Lcom/roblox/client/datastructures/c;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/roblox/client/o/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method protected c()Ljava/lang/String;
    .locals 5

    const-string v0, "appVersion"

    const-string v1, "2.463.417004"

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    .line 120
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "deviceType"

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "deviceOSVersion"

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    const-string v0, "platform"

    const-string v1, "Android"

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    const-string v0, "reporter"

    const-string v1, "App"

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    .line 126
    iget-wide v0, p0, Lcom/roblox/client/o/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/roblox/client/o/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/o/a;->f:J

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/o/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/roblox/client/o/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/roblox/client/o/a;->d:Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/roblox/client/o/a;->c:Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/o/a;->b:Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/roblox/client/o/a;->f:J

    .line 143
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
