.class public final Lcom/unity3d/player/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/g;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Landroid/app/Presentation;

.field private c:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/unity3d/player/k;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/k;Landroid/app/Presentation;)Landroid/app/Presentation;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/k;->b:Landroid/app/Presentation;

    return-object p1
.end method

.method static synthetic a(Lcom/unity3d/player/k;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/k;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/unity3d/player/k;)Landroid/app/Presentation;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Landroid/app/Presentation;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/k;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/unity3d/player/k;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    goto :goto_4
.end method

.method public final a(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;)V
    .registers 6

    const-string v0, "display"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v1, Lcom/unity3d/player/k$1;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/player/k$1;-><init>(Lcom/unity3d/player/k;Lcom/unity3d/player/UnityPlayer;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    goto :goto_a
.end method

.method public final a(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;I)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unity3d/player/k;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v0, p0, Lcom/unity3d/player/k;->b:Landroid/app/Presentation;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p3, :cond_22

    monitor-exit v3

    move v0, v1

    :goto_21
    return v0

    :cond_22
    const-string v0, "display"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_2f

    monitor-exit v3

    move v0, v2

    goto :goto_21

    :cond_2f
    invoke-virtual {v0, p3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_38

    monitor-exit v3

    move v0, v2

    goto :goto_21

    :cond_38
    new-instance v2, Lcom/unity3d/player/k$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/unity3d/player/k$2;-><init>(Lcom/unity3d/player/k;Landroid/content/Context;Landroid/view/Display;Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p1, v2}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    monitor-exit v3

    move v0, v1

    goto :goto_21

    :catchall_43
    move-exception v0

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_43

    throw v0
.end method
